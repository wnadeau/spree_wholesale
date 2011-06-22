module SpreeWholesale
  class CustomHooks < Spree::ThemeSupport::HookListener
        
    Deface::Override.new(:virtual_path => "orders/_line_item",
                     :name => "converted_cart_item_price_742898871",
                     :replace => "[data-hook='cart_item_price'], #cart_item_price[data-hook]",
                     :partial => "hooks/cart_item_price",
                     :disabled => false)

    Deface::Override.new(:virtual_path => "orders/_line_item",
                     :name => "converted_cart_item_total_307712838",
                     :replace => "[data-hook='cart_item_total'], #cart_item_total[data-hook]",
                     :partial => "hooks/cart_item_total",
                     :disabled => false)

    Deface::Override.new(:virtual_path => "admin/product_scopes/_form",
                     :name => "converted_admin_product_form_right_69008170",
                     :replace => "[data-hook='admin_product_form_right'], #admin_product_form_right[data-hook]",
                     :partial => "admin/hooks/product_form_right",
                     :disabled => false)


    
    Deface::Override.new(:virtual_path => "users/show",
                     :name => "converted_account_my_orders_916686506",
                     :insert_before => "[data-hook='account_my_orders'], #account_my_orders[data-hook]",
                     :partial => "hooks/wholesale_customer",
                     :disabled => false)

    Deface::Override.new(:virtual_path => "orders/edit",
                     :name => "converted_inside_cart_form_186875630",
                     :insert_before => "[data-hook='inside_cart_form'], #inside_cart_form[data-hook]",
                     :partial => "hooks/wholesale_customer_id",
                     :disabled => false)
    Deface::Override.new(:virtual_path => "checkout/_payment",
                     :name => "converted_checkout_payment_step_41818979",
                     :insert_before => "[data-hook='checkout_payment_step'], #checkout_payment_step[data-hook]",
                     :partial => "hooks/wholesale_payment_options",
                     :disabled => false)
    Deface::Override.new(:virtual_path => "admin/orders/show",
                     :name => "converted_admin_order_show_buttons_149198146",
                     :insert_after => "[data-hook='admin_order_show_buttons'], #admin_order_show_buttons[data-hook]",
                     :partial => "hooks/wholesale_customer_id",
                     :disabled => false)

    
    
    Deface::Override.new(:virtual_path => "admin/orders/index",
                     :name => "converted_admin_orders_index_headers_486787594",
                     :insert_after => "[data-hook='admin_orders_index_headers'], #admin_orders_index_headers[data-hook]",
                     :partial => "admin/hooks/admin_orders_index_headers",
                     :disabled => false)

    Deface::Override.new(:virtual_path => "admin/orders/index",
                     :name => "converted_admin_orders_index_rows_87213132",
                     :insert_after => "[data-hook='admin_orders_index_rows'], #admin_orders_index_rows[data-hook]",
                     :partial => "admin/hooks/admin_orders_index_rows",
                     :disabled => false)

    Deface::Override.new(:virtual_path => "admin/orders/index",
                     :name => "converted_admin_orders_index_search_420037332",
                     :insert_after => "[data-hook='admin_orders_index_search'], #admin_orders_index_search[data-hook]",
                     :partial => "admin/hooks/admin_orders_index_search",
                     :disabled => false)

    Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "converted_admin_tabs_906443249",
                     :insert_after => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :partial => "admin/hooks/wholesale_tab",
                     :disabled => false)
    
  end
end
