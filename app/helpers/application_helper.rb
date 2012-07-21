module ApplicationHelper
  def titulo
    base_titulo = "IPASA"
    if @titulo.nil?
      base_titulo
    else
      "#{base_titulo} | #{@titulo}"
    end
  end
  
  def logo
    logo = image_tag("logo.png", alt: "Sample App", class: "round")
  end

  def link_to_index_tab(controller)
    index_icon = '<i class="icon-th-list icon-white"></i> Lista'
    link_to raw(index_icon), {:controller => controller, :action => "index" , :format => :js}, :remote => true , 'data-toggle' => 'tab'
  end

  def link_to_new_tab(controller)
    new_icon = '<i class="icon-plus icon-white"></i> Agregar'
    link_to raw(new_icon), {:controller => controller, :action => "new" , :format => :js}, :remote => true , 'data-toggle' => 'tab'
  end

  def link_to_show(link)
    show_icon = '<i class="icon-th-list icon-white"></i>Mostrar'
    link_to raw(show_icon), link, {
      :remote => true, 'data-toggle' =>  "modal", 'data-target' => "#modal-window",
      'data-keyboard' => true, 'data-backdrop' => true, class: "btn btn-mini btn-success"
    }
  end

  def link_to_edit(link)
    edit_icon = '<i class="icon-pencil icon-white"></i>Editar'
    link_to raw(edit_icon), "#{link}/edit", {
      remote: true , 'data-toggle' =>  'modal', 'data-target' => '#modal-window', 
      'data-keyboard' => true, 'data-backdrop' => true, class: 'btn btn-mini btn-primary' 
    }
  end

  def link_to_delete(link)
    delete_icon = '<i class="icon-trash icon-white"></i>Eliminar'
    link_to raw(delete_icon), link , :method => :delete, confirm: 'Esta Seguro?', class: 'btn btn-mini btn-danger'
  end
end
