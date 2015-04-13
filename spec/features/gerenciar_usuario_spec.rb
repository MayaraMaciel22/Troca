# coding: utf-8
require 'rails_helper'

feature 'gerenciar Usuario' do

  scenario 'incluir Usuario' do # , :js => true do
    visit new_usuario_path
    preencher_e_verificar_usuario
  end

  scenario 'alterar Usuario' do #, :js => true do
    usuario = FactoryGirl.create(:usuario)
    visit edit_usuario_path(usuario)
    preencher_e_verificar_usuario
  end

  scenario 'excluir usuario' do #, :javascript => true do
    usuario = FactoryGirl.create(:usuario)
    visit usuarios_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_usuario
    fill_in 'Nome', :with => "Mayara"
	 fill_in 'Email', :with => "mayaramaciel92@hotmail.com"
	 fill_in 'CPF', :with => "147.953.037-97"
	 fill_in 'Data de nascimento', :with => "21/12/1992"
	 fill_in 'Telefone', :with => "22 99856-6397"
    fill_in 'Endereço', :with => "Rua XXX"
    fill_in 'Senha', :with => "mayara"

    click_button 'Salvar'

    expect(page).to have_content 'Nome: Mayara'
	 expect(page).to have_content 'Email: mayaramaciel92@hotmail.com'
	 expect(page).to have_content 'CPF: 147.953.037-97'
	 expect(page).to have_content 'Data de nascimento: 21/12/1992'
	 expect(page).to have_content 'Telefone: 22 99856-6397'
    expect(page).to have_content 'Endereço: Rua XXX'
	 expect(page).to have_content 'Senha: mayara'
  end
end
