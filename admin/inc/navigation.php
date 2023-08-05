<style>
  [class*="sidebar-light-"] .nav-treeview > .nav-item > .nav-link.active, [class*="sidebar-light-"] .nav-treeview > .nav-item > .nav-link.active:hover {
      color: #ffffff !important;
  }
</style>
      <aside class="main-sidebar sidebar-light-primary navbar-light elevation-4 sidebar-no-expand">
        <a href="<?php echo base_url ?>admin" class="brand-link bg-primary text-sm">
        <img src="<?php echo validate_image($_settings->info('logo'))?>" alt="Store Logo" class="brand-image img-circle elevation-3" style="opacity: .8;width: 1.5rem;height: 1.5rem;max-height: unset">
        <span class="brand-text font-weight-light"><?php echo $_settings->info('short_name') ?></span>
        </a>
        <div class="sidebar os-host os-theme-light os-host-overflow os-host-overflow-y os-host-resize-disabled os-host-transition os-host-scrollbar-horizontal-hidden">
          <div class="os-resize-observer-host observed">
            <div class="os-resize-observer" style="left: 0px; right: auto;"></div>
          </div>
          <div class="os-size-auto-observer observed" style="height: calc(100% + 1px); float: left;">
            <div class="os-resize-observer"></div>
          </div>
          <div class="os-content-glue" style="margin: 0px -8px; width: 249px; height: 646px;"></div>
          <div class="os-padding">
            <div class="os-viewport os-viewport-native-scrollbars-invisible" style="overflow-y: scroll;">
              <div class="os-content" style="padding: 0px 8px; height: 100%; width: 100%;">
                <div class="clearfix"></div>
                <nav class="mt-1">
                   <ul class="nav nav-pills nav-sidebar flex-column text-sm nav-compact nav-flat
                    nav-child-indent nav-collapse-hide-child" data-widget="treeview" role="menu" data-accordion="false">
                    <li class="nav-item dropdown">
                      <a href="./" class="nav-link nav-home">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                          Dashboard
                        </p>
                      </a>
                    </li> 
                    <li class="nav-item dropdown">
                      <a href="./?page=models" class="nav-link nav-models">
                        <i class="nav-icon fas fa-car"></i>
                        <p>
                          Car Models
                        </p>
                      </a>
                    </li> 
                    <li class="nav-item dropdown">
                      <a href="./?page=bids" class="nav-link nav-bids">
                      <i class="nav-icon fas fa-gavel"></i>
                        <p>
                          Bids
                        </p>
                      </a>
                    </li> 
                    <li class="nav-item dropdown">
                      <a href="./?page=News" class="nav-link nav-News">
                        <i class="nav-icon fas fa-newspaper"></i>
                        <p>
                          News
                        </p>
                      </a>
                    </li>
                    <li class="nav-item dropdown">
                      <a href="./?page=CarPics" class="nav-link nav-CarPics">
                        <i class="nav-icon fas fa-image"></i>
                        <p>
                          Car Pictures
                        </p>
                      </a>
                    </li> 
                    <li class="nav-item dropdown">
                      <a href="./?page=CarVids" class="nav-link nav-CarVids">
                        <i class="nav-icon fas fa-video"></i>
                        <p>
                          Car Vids
                        </p>
                      </a>
                    </li> 
                    <li class="nav-item dropdown">
                      <a href="./?page=Requsted" class="nav-link nav-Requsted">
                        <i class="nav-icon fas fa-car-side"></i>
                        <p>
                          Request Car 
                        </p>
                      </a>
                    </li> 

                    <li class="nav-item">
                      <a href="#" class="nav-link">
                      <i class="nav-icon fas fa-truck-pickup"></i>
                        <p>
                          Vehicles
                          <i class="right fas fa-angle-left"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview" style="display: none;">
                        <li class="nav-item">
                          <a href="./?page=BiddingCars" class="nav-link tree-item nav-BiddingCars">
                            <i class="fas fa-tags nav-icon"></i>
                            <p>Bidding Cars</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="./?page=vehicles" class="nav-link tree-item nav-vehicles">
                            <i class="fas fa-tags nav-icon"></i>
                            <p>Available</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="./?page=vehicles/transactions" class="nav-link tree-item nav-vehicles_transactions">
                            <i class="fa fa-file-invoice nav-icon"></i>
                            <p>Transactions</p>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <?php if($_settings->userdata('type') == 1): ?>
                    <li class="nav-item">
                      <a href="#" class="nav-link">
                      <i class="nav-icon fas fa-list-alt"></i>
                        <p>
                          Master List
                          <i class="right fas fa-angle-left"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview" style="display: none;">
                        <li class="nav-item">
                          <a href="./?page=brands" class="nav-link tree-item nav-brands">
                            <i class="far fa-copyright nav-icon"></i>
                            <p>Brands</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="./?page=car_types" class="nav-link tree-item nav-car_types">
                            <i class="fa fa-list nav-icon"></i>
                            <p>Car Types</p>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-tags"></i>
                        <p>
                          Sells Offers
                          <i class="right fas fa-angle-left"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview" style="display: none;">
                        <li class="nav-item">
                          <a href="./?page=sellsoffers" class="nav-link tree-item nav-sellsoffers">
                          <i class="nav-icon fas fa-money-check-alt"></i>
                            <p>To Us</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="./?page=comm" class="nav-link tree-item nav-comm">
                          <i class="nav-icon fas fa-hand-holding-usd"></i>
                            <p>With Commission</p>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-item dropdown">
                      <a href="./?page=reports" class="nav-link nav-reports">
                        <i class="nav-icon fas fa-file-alt"></i>
                        <p>
                          Monthly Sales Report 
                        </p>
                      </a>
                    </li> 
                    <li class="nav-item dropdown">
                      <a href="./?page=Suggestions" class="nav-link nav-Suggestions">
                        <i class="nav-icon far fa-comment-alt"></i>
                        <p>
                          Suggestions
                        </p>
                      </a>
                    </li> 
                    <li class="nav-item dropdown">
                      <a href="./?page=Clints" class="nav-link nav-Clints">
                      <i class="nav-icon fas fa-users"></i>
                        <p>
                          Clints
                        </p>
                      </a>
                    </li> 
                    <li class="nav-header">Maintenance</li>
                    <li class="nav-item dropdown">
                      <a href="<?php echo base_url ?>admin/?page=user/list" class="nav-link nav-user_list">
                        <i class="nav-icon fas fa-users-cog"></i>
                        <p>
                          User List
                        </p>
                      </a>
                    </li>
                    <li class="nav-item dropdown">
                      <a href="<?php echo base_url ?>admin/?page=system_info" class="nav-link nav-system_info">
                        <i class="nav-icon fas fa-tools"></i>
                        <p>
                          System Information
                        </p>
                      </a>
                    </li>
                    <?php endif; ?>
                  </ul>
                </nav>
              </div>
            </div>
          </div>
          <div class="os-scrollbar os-scrollbar-horizontal os-scrollbar-unusable os-scrollbar-auto-hidden">
            <div class="os-scrollbar-track">
              <div class="os-scrollbar-handle" style="width: 100%; transform: translate(0px, 0px);"></div>
            </div>
          </div>
          <div class="os-scrollbar os-scrollbar-vertical os-scrollbar-auto-hidden">
            <div class="os-scrollbar-track">
              <div class="os-scrollbar-handle" style="height: 55.017%; transform: translate(0px, 0px);"></div>
            </div>
          </div>
          <div class="os-scrollbar-corner"></div>
        </div>
      </aside>
      <script>
    $(document).ready(function(){
      var page = '<?php echo isset($_GET['page']) ? $_GET['page'] : 'home' ?>';
      page = page.replace(/\//g,'_');
      console.log(page, $('.nav-link.nav-'+page)[0])
      if($('.nav-link.nav-'+page).length > 0){
             $('.nav-link.nav-'+page).addClass('active')
        if($('.nav-link.nav-'+page).hasClass('tree-item') == true){
            $('.nav-link.nav-'+page).addClass('active')
          $('.nav-link.nav-'+page).closest('.nav-treeview').parent().addClass('menu-open')
        }
        if($('.nav-link.nav-'+page).hasClass('nav-is-tree') == true){
          $('.nav-link.nav-'+page).parent().addClass('menu-open')
        }

      }
      $('.nav-link.active').addClass('bg-gradient-primary')
    })
  </script>