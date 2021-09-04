module Dashboard::HomeHelper

  def item_menu path, nome
    %Q{
      <li class="nav-item" style="margin-top:5px">
      <a href="#{path}" class="nav-link #{ current_page?(path) ? 'active' : ''}" aria-current="page">
        <svg class="bi me-2" width="16" height="16"><use xlink:href="#home"></use></svg>
        #{nome}
      </a>
      </li>
    }.html_safe if current_usuario.perfil == 'ADMINISTRADOR'
  end
end
