import $ from 'jquery';

class Menu {
	// 1. describe and create/initiate our object
	constructor() {
		this.navLink = $(".nav-item");
	}
	// 2. list of events
	events() {
		this.navLink.on("click", this.highlightNav.bind(this));
	}

	// 3. where our methods (function, action...) live
	highlightNav() {
		this.navLink.addClass("active");
	}
}
export default Menu;