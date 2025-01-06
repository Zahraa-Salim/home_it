(function ($) {
    "use strict";
    
    
    // Initiate the wowjs
    new WOW().init();


    // Sticky Navbar
    $(window).scroll(function () {
        if ($(this).scrollTop() > 45) {
            $('.nav-bar').addClass('sticky-top');
        } else {
            $('.nav-bar').removeClass('sticky-top');
        }
    });
    
    
    document.addEventListener("DOMContentLoaded", function () {
        const backToTopButton = document.querySelector('.back-to-top');
    
        // Show/hide button based on scroll position
        window.addEventListener('scroll', function () {
            if (window.scrollY > 300) {
                backToTopButton.style.display = 'block';
            } else {
                backToTopButton.style.display = 'none';
            }
        });
    
        // Smooth scroll to top
        if (backToTopButton) {
            backToTopButton.addEventListener('click', function (e) {
                e.preventDefault();
                window.scrollTo({
                    top: 0,
                    behavior: 'smooth'
                });
            });
        }
    });
    
})(jQuery);
document.addEventListener("DOMContentLoaded", function () {
    const backToTopButton = document.querySelector('.back-to-top');

    // Show/hide button based on scroll position
    window.addEventListener('scroll', function () {
        if (window.scrollY > 300) {
            backToTopButton.style.display = 'block';
        } else {
            backToTopButton.style.display = 'none';
        }
    });

    // Smooth scroll to top
    if (backToTopButton) {
        backToTopButton.addEventListener('click', function (e) {
            e.preventDefault();
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        });
    }
});


function toggleUpdateSection() {
    document.getElementById('change-btn').classList.add('hidden');
    document.getElementById('update-section').classList.remove('hidden');
}

document.addEventListener("DOMContentLoaded", function () {
    // Check if 'type_id' is present in the URL
    const urlParams = new URLSearchParams(window.location.search);
    const typeId = urlParams.get("type_id");
    const cityId = urlParams.get("city_id");
    const keyword = urlParams.get("keyword");

    if (typeId || cityId || keyword) {
        // Scroll to the specific div
        const targetDiv = document.getElementById("property-listing");
        if (targetDiv) {
            window.scrollTo({
                top: targetDiv.offsetTop, // Scroll to the start of the target div
                behavior: 'smooth' // Smooth scroll effect
            });
        }
    }
});


// Call this function when the page is loaded
window.onload = scrollToElementBasedOnType;


document.addEventListener("DOMContentLoaded", function () {
    // Check if 'type_id' is present in the URL
    const urlParams = new URLSearchParams(window.location.search);
    const typeId = urlParams.get("type_id");

    if (typeId) {
        // Fetch the property type based on type_id
        const propertyTypes = {
            1: 'House',
            2: 'Apartment',
            3: 'Villa',
            4: 'Office',
            5: 'Shope',
            6: 'Townhouse',
            7: 'Garage',
            8: 'Building'
            // Add more types as needed
        };

        // Get the type name based on type_id
        const propertyTypeName = propertyTypes[typeId];

        // If property type exists, inject it into the HTML with a custom class
        if (propertyTypeName) {
            const propertyTypeDiv = document.getElementById("property-type-div");
            propertyTypeDiv.innerHTML = `<h1 class="mb-3">Property Listing - <span style="color: #00B98E;"> ${propertyTypeName}</span></h1>`;
        }

        // Scroll to the property listing section (optional)
        const targetDiv = document.getElementById("property-listing");
        if (targetDiv) {
            targetDiv.scrollIntoView({ behavior: "smooth", block: "center" });
        }
    }
});
