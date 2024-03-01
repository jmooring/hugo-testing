jQuery(function () {

    /**
     * Init the cookie consent.
     */
    cookieconsent.initialise({
        "palette": {
            "popup": {
                "background": "#089664",
                "text": "#fff"
            },
            "button": {
                "background": "#fc0"
            }
        },
        "content": {
            "message": cookieMessage,
            "dismiss": cookieDismiss,
            "link":    cookieLink,
            "href":    cookieInfoUrl
        },
        "position": "bottom"
    });

    /**
     * Initialise the scroll-to-top button
     */
    const btnScrollToTop = $('#btn-scroll-to-top');
    $(window).on('scroll', function() {
        btnScrollToTop.toggleClass('show', $(window).scrollTop() > 300);
    });

    btnScrollToTop.on('click', function(e) {
        e.preventDefault();
        $('html, body').animate({scrollTop: 0}, '300');
    });

    /**
     * Magnific popup
     */
    $('.image-popup').magnificPopup({
        type: 'image',
        mainClass: 'mfp-figure',
        closeOnContentClick: true,
        gallery: {
            enabled: true,
        },
    });

    /**
     * Copy link button.
     */
    $('.copy-link').on('click', function (e) {
        e.preventDefault();
        navigator.clipboard.writeText($(this).attr('href'))
            // Add a tooltip on success
            .then(() => {
                const tt = new bootstrap.Tooltip(this, {title: $(this).data('copied')});
                tt.show();
                setTimeout(() => tt.dispose(), 2000);
            });
    });

    /**
     * Initialise the audio player.
     */
    (function () {
        const audio = $('audio');
        const tracks = $('a[type="audio/mpeg"]');
        let curTrack;

        // Bind onClick handlers
        tracks.on('click', function (e) {
            e.preventDefault();
            const track = $(this);
            if (track.is('.active')) {
                audio[0].pause();
                track.removeClass('active');
                track.addClass('paused');
            } else {
                play(track);
            }
        });

        // Set up the audio element, if any
        if (audio.length > 0) {
            audio[0].volume = 1;
            audio.on('ended', next);
        }

        function play(track) {
            const audioEl = audio[0];
            const href = track.attr('href');
            if (!curTrack || href !== curTrack.attr('href')) {
                curTrack = track;
                audioEl.src = href;
                audioEl.load();
            }
            audioEl.play();
            tracks.removeClass('active paused');
            track.addClass('active');
        }

        function next() {
            const track = tracks.get(tracks.index(curTrack) + 1);
            if (track) {
                play($(track));
            } else {
                tracks.removeClass('active paused');
                curTrack = undefined;
            }
        }
    })();

    /**
     * Initialise the filtering mechanism.
     */
    (function () {
        let timer;
        const filterBox = $('#filterBox');

        // Disable submitting the form
        filterBox.closest('form').on('submit', function(e) {
            e.preventDefault();
            e.stopPropagation();
        });

        /**
         * Remove search timer, if any.
         */
        function clearTimer() {
            if (timer !== undefined) {
                clearTimeout(timer);
                timer = undefined;
            }
        }

        /**
         * Perform search.
         */
        function doFilterPage() {
            const s = filterBox.val().toLowerCase();
            $('.filterable').each(function () {
                const e = $(this);
                e.toggleClass('d-none', s !== '' && !e.text().toLowerCase().includes(s));
            });
        }

        // Add a search pattern change listener
        filterBox.on('keyup change paste', function () {
            clearTimer();
            timer = setTimeout(doFilterPage, 250);
        });

        // On pressing Enter or clearing the input, trigger search immediately
        filterBox.on('search', doFilterPage);
    })();

    /**
     * Contact form validation.
     */
    $('#contact-submit-button').on('click', function (e) {
        const contactForm = $('#contact-form');
        if (contactForm[0].checkValidity() === false) {
            // Stop the form from being submitted
            e.preventDefault();
            e.stopPropagation();
        }
        contactForm.addClass('was-validated');
    });

    // Initialise Animate-on-Scroll
    AOS.init();
});

/**
 * Toggle showing of chords on a lyrics page.
 */
function toggleChords(e) {
    e.preventDefault();
    $("#radiolaria-track-lyrics").toggleClass("chords");
    $('#btnChords').toggleClass("active");
}
