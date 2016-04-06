# == Schema Information
#
# Table name: servicios
#
#  id                  :integer          not null, primary key
#  nombre              :string
#  descripcion         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  imagen_file_name    :string
#  imagen_content_type :string
#  imagen_file_size    :integer
#  imagen_updated_at   :datetime
#

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ServiciosController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Servicio. As you add validations to Servicio, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ServiciosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all servicios as @servicios" do
      servicio = Servicio.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:servicios)).to eq([servicio])
    end
  end

  describe "GET #show" do
    it "assigns the requested servicio as @servicio" do
      servicio = Servicio.create! valid_attributes
      get :show, {:id => servicio.to_param}, valid_session
      expect(assigns(:servicio)).to eq(servicio)
    end
  end

  describe "GET #new" do
    it "assigns a new servicio as @servicio" do
      get :new, {}, valid_session
      expect(assigns(:servicio)).to be_a_new(Servicio)
    end
  end

  describe "GET #edit" do
    it "assigns the requested servicio as @servicio" do
      servicio = Servicio.create! valid_attributes
      get :edit, {:id => servicio.to_param}, valid_session
      expect(assigns(:servicio)).to eq(servicio)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Servicio" do
        expect {
          post :create, {:servicio => valid_attributes}, valid_session
        }.to change(Servicio, :count).by(1)
      end

      it "assigns a newly created servicio as @servicio" do
        post :create, {:servicio => valid_attributes}, valid_session
        expect(assigns(:servicio)).to be_a(Servicio)
        expect(assigns(:servicio)).to be_persisted
      end

      it "redirects to the created servicio" do
        post :create, {:servicio => valid_attributes}, valid_session
        expect(response).to redirect_to(Servicio.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved servicio as @servicio" do
        post :create, {:servicio => invalid_attributes}, valid_session
        expect(assigns(:servicio)).to be_a_new(Servicio)
      end

      it "re-renders the 'new' template" do
        post :create, {:servicio => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested servicio" do
        servicio = Servicio.create! valid_attributes
        put :update, {:id => servicio.to_param, :servicio => new_attributes}, valid_session
        servicio.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested servicio as @servicio" do
        servicio = Servicio.create! valid_attributes
        put :update, {:id => servicio.to_param, :servicio => valid_attributes}, valid_session
        expect(assigns(:servicio)).to eq(servicio)
      end

      it "redirects to the servicio" do
        servicio = Servicio.create! valid_attributes
        put :update, {:id => servicio.to_param, :servicio => valid_attributes}, valid_session
        expect(response).to redirect_to(servicio)
      end
    end

    context "with invalid params" do
      it "assigns the servicio as @servicio" do
        servicio = Servicio.create! valid_attributes
        put :update, {:id => servicio.to_param, :servicio => invalid_attributes}, valid_session
        expect(assigns(:servicio)).to eq(servicio)
      end

      it "re-renders the 'edit' template" do
        servicio = Servicio.create! valid_attributes
        put :update, {:id => servicio.to_param, :servicio => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested servicio" do
      servicio = Servicio.create! valid_attributes
      expect {
        delete :destroy, {:id => servicio.to_param}, valid_session
      }.to change(Servicio, :count).by(-1)
    end

    it "redirects to the servicios list" do
      servicio = Servicio.create! valid_attributes
      delete :destroy, {:id => servicio.to_param}, valid_session
      expect(response).to redirect_to(servicios_url)
    end
  end

end