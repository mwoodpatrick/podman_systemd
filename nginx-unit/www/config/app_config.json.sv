{
    "listeners": {
        "*:80": {
            "pass": "routes"
        }
    },

    "routes": [
        {
            "match": {
                "uri": "/wp_main/"
            },

            "action": {
                "pass": "applications/wp_main"
            }
        },
        {
            "match": {
                "uri": "/phpinfo/"
            },

            "action": {
                "pass": "applications/phpinfo"
            }
        },
        {
            "match": {
                "uri": "/static/"
            },

            "action": {
                "share": "/projects/www/$uri"
            }
        }
     ],

    "applications": {
        "phpinfo": {
            "type": "php",
            "root": "/projects/www/php/phpinfo"
        },
        "wp": {
            "type": "php",
            "root": "/projects/www/php/wordpress/wp"
        },
        "wp_main": {
            "type": "php",
            "root": "/projects/www/php/wordpress/wp-main"
        }
    }
}
