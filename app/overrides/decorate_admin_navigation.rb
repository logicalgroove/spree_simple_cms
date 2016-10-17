Deface::Override.new(
	virtual_path: 'spree/layouts/admin',
	name: 'add_content_blocks_to_admin_menu',
	insert_top: '[data-hook="admin_tabs"]',
	text: '<ul class="nav nav-sidebar"> <%= tab :content_blocks %> </ul>'
	)