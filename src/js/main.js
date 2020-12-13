const svgs_class = document.querySelectorAll("img[data-svg]");

for (let svgs_i = 0; svgs_i < svgs_class.length; svgs_i++) {
    const svg = svgs_class[svgs_i];

	const imgClass = document.createAttribute("class");
	imgClass.value = svg.getAttribute("class");

	var imgURL = svg.getAttribute("data-svg");

	var data = null;

	var xhr = new XMLHttpRequest();
	xhr.withCredentials = false;

	xhr.addEventListener("readystatechange", function () {
	if (this.readyState === 4) {

	let svg_new = this.responseText;
			
		// Replace image with new SVG
		parent = svg.parentNode;
		let tempDiv = document.createElement('div');
        tempDiv.innerHTML = svg_new;
        
		for (var i = 0; i < tempDiv.childNodes.length; i++) {
			if(tempDiv.childNodes[i].tagName=='svg'){
                svg_new = tempDiv.childNodes[i];
			}
		}

        // Add replaced image's classes to the new SVG
		if(typeof imgClass !== 'undefined') {
			svg_new.setAttributeNode(imgClass);
			svg_new.classList.add("on");
		};

		// Remove any invalid XML tags as per http://validator.w3.org
		parent.replaceChild(svg_new, svg);
		
	}
	});

	xhr.open("GET", imgURL);

	xhr.send(data);
}