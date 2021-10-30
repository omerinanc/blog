class WizardsController < ApplicationController
    def index
        @buyuculer=Wizard.all
    end
    def show
        @buyuculer2=Wizard.where(name:params[:id])
    end
end
