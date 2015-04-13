# coding: utf-8
require 'rails_helper'

feature 'gerenciar Troca entre usuario' do

  scenario 'incluir Troca entre usuario' do # , :js => true do
    visit new_trocaentreusuario_path
    preencher_e_verificar_trocaentreusuario
  end

  scenario 'alterar Troca entre usuario' do #, :js => true do
	 trocaentreusuario = FactoryGirl.create(:trocaentreusuario)
    visit edit_trocaentreusuario_path(trocaentreusuario)
    preencher_e_verificar_trocaentreusuario
  end

  scenario 'excluir Troca entre usuario' do #, :javascript => true do
	 trocaentreusuario = FactoryGirl.create(:trocaentreusuario)
    visit trocaentreusuarios_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_trocaentreusuario
    fill_in 'Ponto de origem', :with => "Sao Paulo"
	 fill_in 'Ponto de destino', :with => "Rio de Janeiro"
	 fill_in 'Estado', :with => "finalizada"
	 fill_in 'Data da troca', :with => "23/03/2015"

    click_button 'Salvar'

    expect(page).to have_content 'Ponto de origem: Sao Paulo'
	 expect(page).to have_content 'Ponto de destino: Rio de Janeiro'
	 expect(page).to have_content 'Estado: finalizada'
	 expect(page).to have_content 'Data da troca: 23/03/2015'
  end
end
