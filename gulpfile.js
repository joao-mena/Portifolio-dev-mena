/* Requiring necessary packages */
const { src, dest, parallel, series, watch } = require('gulp');
const autoprefixer = require('gulp-autoprefixer');
const browsersync = require('browser-sync');
const changed = require('gulp-changed');
const concat = require('gulp-concat');
const cssnano = require('gulp-cssnano');
const babel = require('gulp-babel');
const uglify = require('gulp-uglify');
const imagemin = require('gulp-imagemin');
const sass = require('gulp-sass');
const sourcemaps = require('gulp-sourcemaps');
const del = require('del');

/* Setting base project constants */
const paths = {
  src: 'src/',
  dest: '../wp-content/themes/entre-irmaos-theme/',
};

/*
 * BASIC
 *
 * Tasks basicas e globais, direcionada a todos
 */

function clean() {
  return del(paths.dest, { force: true });
}

function images() {
  return src([
    paths.src + 'assets/img/*.jpg',
    paths.src + 'assets/img/*.gif',
    paths.src + 'assets/img/*.png',
    paths.src + 'assets/img/*.svg',
  ])
    .pipe(changed(paths.dest + 'assets/img'))
    .pipe(imagemin())
    .pipe(dest(paths.dest + 'assets/img'));
}

function screenshot() {
  return src([paths.src + '/screenshot.png'])
    .pipe(imagemin())
    .pipe(dest(paths.dest));
}

function php() {
  return src([paths.src + '**/*.php'])
    .pipe(sourcemaps.init())
    .pipe(changed(paths.dest))
    .pipe(sourcemaps.write())
    .pipe(dest(paths.dest));
}

function phpServer() {
  return src([paths.src + '**/*.php'])
    .pipe(changed(paths.dest))
    .pipe(dest(paths.dest));
}

function css() {
  return src([paths.src + 'scss/main.scss'])
    .pipe(sourcemaps.init())
    .pipe(changed(paths.dest))
    .pipe(
      sass({ includePaths: paths.src, outputStyle: 'compressed' }).on(
        'error',
        sass.logError,
      ),
    )
    .pipe(autoprefixer())
    .pipe(
      cssnano({
        zindex: false,
        reduceIdents: false,
        discardUnused: { fontFace: false },
      }),
    )
    .pipe(concat('style.css'))
    .pipe(sourcemaps.write())
    .pipe(dest(paths.dest));
}

function cssServer() {
  return src([paths.src + 'scss/main.scss'])
    .pipe(changed(paths.dest))
    .pipe(
      sass({ includePaths: paths.src, outputStyle: 'compressed' }).on(
        'error',
        sass.logError,
      ),
    )
    .pipe(autoprefixer())
    .pipe(cssnano({ zindex: false, reduceIdents: false }))
    .pipe(concat('style.css'))
    .pipe(dest(paths.dest));
}

function js() {
  return src([paths.src + 'js/**/*.js', paths.src + 'js/main.js'])
    .pipe(sourcemaps.init())
    .pipe(changed(paths.dest + 'js'))
    .pipe(
      babel({
        presets: ['env'],
      }),
    )
    .pipe(uglify())
    .pipe(concat('scripts.min.js'))
    .pipe(sourcemaps.write())
    .pipe(dest(paths.dest + 'js'));
}

function jsServer() {
  return src([paths.src + 'js/**/*.js', paths.src + 'js/main.js'])
    .pipe(changed(paths.dest + 'js'))
    .pipe(
      babel({
        presets: ['env'],
      }),
    )
    .pipe(uglify())
    .pipe(concat('scripts.min.js'))
    .pipe(dest(paths.dest + 'js'));
}

function libsCss() {
  return src([
    'node_modules/reset-css/reset.css',
    'node_modules/@glidejs/glide/dist/css/glide.core.css',
    'node_modules/@splidejs/splide/dist/css/splide.min.css',
  ])
    .pipe(changed(paths.dest + 'css'))
    .pipe(sass())
    .pipe(autoprefixer())
    .pipe(cssnano())
    .pipe(concat('libs.min.css'))
    .pipe(dest(paths.dest + 'css'));
}

function libsJS() {
  return src([
    'node_modules/vanilla-masker/build/vanilla-masker.min.js',
    'node_modules/@glidejs/glide/dist/glide.js',
    'node_modules/@splidejs/splide/dist/js/splide.min.js',
  ])
    .pipe(changed(paths.dest + 'js/libs'))
    .pipe(uglify())
    .pipe(concat('libs.min.js'))
    .pipe(dest(paths.dest + 'js/libs'));
}

// BrowserSync
function browserSync() {
  browsersync({
    proxy: 'http://localhost',
    browser: ['chrome'],
    port: 3000,
    notify: false,
    open: true,
  });
}

// BrowserSync reload
function browserReload() {
  return browsersync.reload;
}

// Watch files
function watchFiles() {
  // Watch SCSS changes
  watch(paths.src + 'scss/**/*.scss', parallel(css)).on(
    'change',
    browserReload(),
  );
  // Watch javascripts changes
  watch(paths.src + 'js/**/*.js', parallel(js)).on('change', browserReload());
  // Watch javascripts changes
  watch(paths.src + '**/*.php', parallel(php)).on('change', browserReload());
}

const watching = parallel(watchFiles, browserSync);

exports.js = js;
exports.css = css;
exports.php = php;
exports.default = series(
  clean,
  images,
  css,
  js,
  php,
  libsCss,
  libsJS,
  screenshot,
  watching,
);
exports.build = series(
  clean,
  images,
  cssServer,
  jsServer,
  phpServer,
  libsCss,
  libsJS,
  screenshot,
);
exports.watch = watching;
