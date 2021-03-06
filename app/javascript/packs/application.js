/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import 'bootstrap'
import fontawesome from '@fortawesome/fontawesome'
import faSolid from '@fortawesome/fontawesome-free-solid'
import faRegular from '@fortawesome/fontawesome-free-regular'
import faBrands from '@fortawesome/fontawesome-free-brands'
import 'src/application'

fontawesome.library.add(faSolid, faRegular, faBrands)
fontawesome.dom.i2svg()

import Rails from 'rails-ujs';
Rails.start();

import 'packs/active_noguchi'
import 'packs/active_wild_noguchi'
import 'packs/main_monster'
import 'packs/add_monster'
import 'packs/alert_battle'
import 'packs/strong_noguchi'
