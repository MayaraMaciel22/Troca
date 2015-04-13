# coding: utf-8
require 'rails_helper'

feature 'gerenciar Ponto de troca' do

  scenario 'incluir Ponto de troca' do # , :js => true do
    visit new_pontodetroca_path
    preencher_e_verificar_pontodetroca
  end

  scenario 'alterar Ponto de troca' do #, :js => true do
    pontodetroca = FactoryGirl.create(:pontodetroca)
    visit edit_pontodetroca_path(pontodetroca)
    preencher_e_verificar_pontodetroca
  end

  scenario 'excluir ponto de troca' do #, :javascript => true do
    pontodetroca = FactoryGirl.create(:pontodetroca)
    visit pontodetrocas_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_pontodetroca
    fill_in 'Nome', :with => "Lojas Americanas"
	 fill_in 'Endereço', :with => "Avenida Pelinca"
	 fill_in 'Email', :with => "lojasamericanaspelinca@hotmail.com"

    click_button 'Salvar'

    expect(page).to have_content 'Nome: Lojas Americanas'
	 expect(page).to have_content 'Endereço: Avenida Pelinca'
	 expect(page).to have_content 'Email: lojasamericanaspelinca@hotmail.com' 
  end
end
