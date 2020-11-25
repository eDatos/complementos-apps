$(function() {
	console.log("DOM is already loaded");
	loadCarousel();
});

function urlencode() {
	var formCerca = document.getElementById("formBusqueda");
	var encodetxt = encodeURI(formCerca.q.value);
	formCerca.q.value = encodetxt;
}

var addPrintLink = {
	init : function(sTargetEl, sLinkText) {
		if (!document.getElementById || !document.createTextNode) {
			return;
		} // Check for DOM support
		if (!document.getElementById(sTargetEl)) {
			return;
		} // Check that the target element actually exists
		if (!window.print) {
			return;
		} // Check that the browser supports window.print
		var oTarget = document.getElementById(sTargetEl);
		var oLink = document.createElement('a');
		var iLink = document.createElement('img');
		var iconLink = document.createElement('i');
		oLink.id = 'print-link'; // Give the link an id to allow styling
		oLink.href = '#'; // Make the link focusable for keyboard users
		oLink.appendChild(document.createTextNode(sLinkText));

		iLink.id = 'cab_tools_print'; // Give the img an id to allow styling
		iLink.alt = 'imprimir';
		iLink.title = 'imprimir';
		iLink.src = ctx + '/theme/ibestat/interfaz/ico_print.png';

		iconLink.id = 'icon-print';
		iconLink.className = 'icon-large icon-print';
		iconLink.title = 'imprimir';
		var att = document.createAttribute('data-toggle'); // Create a
															// "tooltip"
															// attribute
		att.value = "tooltip";

		// Set the value of the class attribute
		iconLink.setAttributeNode(att);

		oLink.appendChild(iconLink);
		// oLink.appendChild(iLink);

		oLink.onclick = function() {
			window.print();
			return false;
		}; // Return false prevents the browser from following the link and
		// jumping to the top of the page after printing
		oTarget.appendChild(oLink);
	},
	/*
	 * <a href="#" onclick="CallPrint()"> <img alt="${msg('imprimir')}"
	 * src="theme/ibestat/interfaz/ico_print.png" title="imprimir"
	 * id="cab_tools_print" /></a>
	 */
	/*
	 * addEvent function included here for portability. Replace with your own
	 * addEvent function if you use one.
	 */
	/*
	 * addEvent function from
	 * http://www.quirksmode.org/blog/archives/2005/10/_and_the_winner_1.html
	 */
	addEvent : function(obj, type, fn) {
		if (obj.addEventListener)
			obj.addEventListener(type, fn, false);
		else if (obj.attachEvent) {
			obj["e" + type + fn] = fn;
			obj[type + fn] = function() {
				obj["e" + type + fn](window.event);
			};
			obj.attachEvent("on" + type, obj[type + fn]);
		}
	}
};
addPrintLink.addEvent(window, 'load', function() {
	addPrintLink.init('print_div', '');
});

/* Per fer el menu accessible */
/**
 * Adds and removes classes to a list of links to allow keyboard accessibility
 * 
 * @param string
 *            dropDownId
 * @param string
 *            hoverClass
 * @param int
 *            mouseOffDelay
 */
function dropdown(dropdownId, hoverClass, mouseOffDelay) {

	function tabOn(li) {
		if (li.nodeName == 'li') {
			li.className = addClass(li);
			tabOn(li.parentNode.parentNode);
		}
	}

	function tabOff(li) {
		if (li.nodeName == 'li') {
			li.className = removeClass(li);
			tabOff(li.parentNode.parentNode);
		}
	}

	function addClass(li) {
		return li.className + ' ' + hoverClass;
	}
	function removeClass(li) {
		return li.className.replace(hoverClass, "");
	}

	if (dropdown = document.getElementById(dropdownId)) {
		var listItems = dropdown.getElementsByTagName('li');
		for (var i = 0; i < listItems.length; i++) {
			listItems[i].onmouseover = function() {
				this.className = addClass(this);
			}
			listItems[i].onmouseout = function() {
				var that = this;
				setTimeout(function() {
					that.className = removeClass(that);
				}, mouseOffDelay);
				this.className = that.className;
			}

			var anchor = listItems[i].getElementsByTagName('a');
			anchor = anchor[0];
			if (anchor != undefined) {
				anchor.onfocus = function() {
					tabOn(this.parentNode);
				}
				anchor.onblur = function() {
					tabOff(this.parentNode);
				}
			}
		}
	}

}

/*
 * Developed by Robert Nyman, http://www.robertnyman.com Code/licensing:
 * http://code.google.com/p/getelementsbyclassname/ Version: 1.0.1
 */
var getElementsByClassName = function(className, tag, elm) {
	if (document.getElementsByClassName) {
		getElementsByClassName = function(className, tag, elm) {
			elm = elm || document;
			var elements = elm.getElementsByClassName(className), nodeName = (tag) ? new RegExp(
					"\\b" + tag + "\\b", "i")
					: null, returnElements = [], current;
			for (var i = 0, il = elements.length; i < il; i += 1) {
				current = elements[i];
				if (!nodeName || nodeName.test(current.nodeName)) {
					returnElements.push(current);
				}
			}
			return returnElements;
		};
	} else if (document.evaluate) {
		getElementsByClassName = function(className, tag, elm) {
			tag = tag || "*";
			elm = elm || document;
			var classes = className.split(" "), classesToCheck = "", xhtmlNamespace = "http://www.w3.org/1999/xhtml", namespaceResolver = (document.documentElement.namespaceURI === xhtmlNamespace) ? xhtmlNamespace
					: null, returnElements = [], elements, node;
			for (var j = 0, jl = classes.length; j < jl; j += 1) {
				classesToCheck += "[contains(concat(' ', @class, ' '), ' "
						+ classes[j] + " ')]";
			}
			try {
				elements = document.evaluate(".//" + tag + classesToCheck, elm,
						namespaceResolver, 0, null);
			} catch (e) {
				elements = document.evaluate(".//" + tag + classesToCheck, elm,
						null, 0, null);
			}
			while ((node = elements.iterateNext())) {
				returnElements.push(node);
			}
			return returnElements;
		};
	} else {
		getElementsByClassName = function(className, tag, elm) {
			tag = tag || "*";
			elm = elm || document;
			var classes = className.split(" "), classesToCheck = [], elements = (tag === "*" && elm.all) ? elm.all
					: elm.getElementsByTagName(tag), current, returnElements = [], match;
			for (var k = 0, kl = classes.length; k < kl; k += 1) {
				classesToCheck.push(new RegExp("(^|\\s)" + classes[k]
						+ "(\\s|$)"));
			}
			for (var l = 0, ll = elements.length; l < ll; l += 1) {
				current = elements[l];
				match = false;
				for (var m = 0, ml = classesToCheck.length; m < ml; m += 1) {
					match = classesToCheck[m].test(current.className);
					if (!match) {
						break;
					}
				}
				if (match) {
					returnElements.push(current);
				}
			}
			return returnElements;
		};
	}
	return getElementsByClassName(className, tag, elm);
};

/* Scripts variaditos */

function salta(Sel) {
	if (Sel.ad.selectedIndex != 0) {
		// document.location=Sel.ad.options[Sel.ad.selectedIndex].value
		window.location.href = Sel.ad.options[Sel.ad.selectedIndex].value;
	}
}

/* Hack para IE6 :( */
toggleSelect = function() {
	var myselect = document.getElementById('bloc_tabla_desp');
	if (myselect != undefined) {
		if (myselect.style.visibility == "hidden") {
			myselect.style.visibility = "visible";
		} else {
			myselect.style.visibility = "hidden";
		}
	}
}

/* Imatge capsalera */

var capsalera = new Array();

function loadCarousel(node) {
	var divCarouselItem, nodeImg, divCarouselCaptionItem, h4, h5, p, button;
	var carouselHome = document.getElementById("carousel-home");
	var carouselHomeIndicators = document.getElementById("carousel-indicators-id");

	if (!carouselHome || !carouselHomeIndicators) {
		console.warn("[ibestatcms] There aren't any carousel or indicators of carousel");
		return;
	}
	console.log("[ibestatcms.loadCarousel] start function");
	console.log("[ibestatcms.loadCarousel] PRUEBA");

	for (var i = 0; i < capsalera.length; i++) {
		console.log("[ibestatcms.loadCarousel] loading image: "	+ capsalera[i].image);
		var isActive = (i == 0);

		divCarouselItem = document.createElement('div');
		nodeImg = document.createElement('div');
		divCarouselCaptionItem = document.createElement('div');
		h4 = document.createElement('h4');
		
		p = document.createElement('p');
		nodeLi = document.createElement('li');

		divCarouselItem.className = 'carousel-item ' + ((isActive) ? 'active' : '');
		nodeImg.className = '_img-fluid _d-inline w-50';
		divCarouselCaptionItem.className = 'cl-666 carousel-caption d-inline w-70';
		h4.className = 'uppercase';
		nodeLi.setAttribute("data-target", '#home-slider');
		nodeLi.setAttribute("data-slide-to", i);
		
		if(capsalera[i].subtitulo != ""){
			h5 = document.createElement('h5');
			h5.className = 'subtitulo';
			h5.textContent = (capsalera[i] && capsalera[i].subtitulo) ? capsalera[i].subtitulo : "--";
		}

		if(capsalera[i].link != ""){
			button = document.createElement('a');
			button.setAttribute("type", 'button');
			button.setAttribute("class", 'btn btn-sm btn-gray btn-disabled');
	
			button.innerHTML = '<i class="icon-external-link"></i>';
			var links = (capsalera[i] && capsalera[i].link) ? capsalera[i].link.split('|') : capsalera[i].link;
			button.href = (capsalera[i] && capsalera[i].link) ? links[0] : "--";
		}
		
		h4.textContent = (capsalera[i] && capsalera[i].titulo) ? capsalera[i].titulo : "--";
		p.textContent = (capsalera[i] && capsalera[i].texto) ? capsalera[i].texto : "-";
		p.className = 'justificarTexto';

		nodeImg.style.background = "url('" + capsalera[i].image	+ "') no-repeat";
		nodeImg.style.height = "300px";
		nodeImg.style.backgroundSize = "cover";

		if (isActive) {
			nodeLi.className = "active";
		}

		divCarouselCaptionItem.appendChild(h4);
		if(capsalera[i].subtitulo != ""){
			divCarouselCaptionItem.appendChild(h5);
		}
		divCarouselCaptionItem.appendChild(p);

		if(capsalera[i].link != ""){
			divCarouselCaptionItem.appendChild(button);
	
			if (links[1]) {
				var pa = document.createElement('p');
				pa.style.textAlign = 'right';
				pa.style.fontSize = '10px';
				pa.style.marginTop = '10px';
				var a = document.createElement('a');
				a.innerText = links[1];
				a.href = links[2];
				pa.appendChild(a);
				divCarouselCaptionItem.appendChild(pa);
				// carouselHomeIndicators.appendChild(pa);
			}
		}

		divCarouselItem.appendChild(nodeImg);
		divCarouselItem.appendChild(divCarouselCaptionItem);

		carouselHome.appendChild(divCarouselItem);
		carouselHomeIndicators.appendChild(nodeLi);
	}
}

function loadXMLDoc(locale) {
	console.log("[ibestatcms.loadXMLDoc] start function");
	var xmlhttp;

	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
		console.log("XMLHttpRequest");
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		console.log("ActiveXObject");

	}
	xmlhttp.onreadystatechange = function(a, b, c) {
		console.log("[ibestatcms.loadXMLDoc.onreadystatechange] start function");
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			// Aquí ja tenim l'xml, generam les variables i
			var xmlDoc = xmlhttp.responseXML;
			var carousel = xmlDoc.getElementsByTagName("carousel")[0];
			var items = carousel.getElementsByTagName("item_" + locale);
			for (var i = 0; i < items.length; i++) {
				capsalera[i] = {};
				capsalera[i].texto = items[i].getElementsByTagName("texto")[0].textContent;
				capsalera[i].titulo = items[i].getElementsByTagName("titulo")[0].textContent;
				capsalera[i].subtitulo = items[i].getElementsByTagName("subtitulo")[0].textContent;
				capsalera[i].link = items[i].getElementsByTagName("link")[0].textContent;
				capsalera[i].image = "/ibfiles"	+ items[i].getElementsByTagName("image")[0].textContent;
			}
		}
	}
	xmlhttp.open("GET", "/ibfiles/content/carousel/" + locale + "/lista.xml", false);
	xmlhttp.send();
} /* fi loadXMLDoc */
