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

RSpec.describe PostosController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Posto. As you add validations to Posto, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PostosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all postos as @postos" do
      posto = Posto.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:postos)).to eq([posto])
    end
  end

  describe "GET #show" do
    it "assigns the requested posto as @posto" do
      posto = Posto.create! valid_attributes
      get :show, {:id => posto.to_param}, valid_session
      expect(assigns(:posto)).to eq(posto)
    end
  end

  describe "GET #new" do
    it "assigns a new posto as @posto" do
      get :new, {}, valid_session
      expect(assigns(:posto)).to be_a_new(Posto)
    end
  end

  describe "GET #edit" do
    it "assigns the requested posto as @posto" do
      posto = Posto.create! valid_attributes
      get :edit, {:id => posto.to_param}, valid_session
      expect(assigns(:posto)).to eq(posto)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Posto" do
        expect {
          post :create, {:posto => valid_attributes}, valid_session
        }.to change(Posto, :count).by(1)
      end

      it "assigns a newly created posto as @posto" do
        post :create, {:posto => valid_attributes}, valid_session
        expect(assigns(:posto)).to be_a(Posto)
        expect(assigns(:posto)).to be_persisted
      end

      it "redirects to the created posto" do
        post :create, {:posto => valid_attributes}, valid_session
        expect(response).to redirect_to(Posto.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved posto as @posto" do
        post :create, {:posto => invalid_attributes}, valid_session
        expect(assigns(:posto)).to be_a_new(Posto)
      end

      it "re-renders the 'new' template" do
        post :create, {:posto => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested posto" do
        posto = Posto.create! valid_attributes
        put :update, {:id => posto.to_param, :posto => new_attributes}, valid_session
        posto.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested posto as @posto" do
        posto = Posto.create! valid_attributes
        put :update, {:id => posto.to_param, :posto => valid_attributes}, valid_session
        expect(assigns(:posto)).to eq(posto)
      end

      it "redirects to the posto" do
        posto = Posto.create! valid_attributes
        put :update, {:id => posto.to_param, :posto => valid_attributes}, valid_session
        expect(response).to redirect_to(posto)
      end
    end

    context "with invalid params" do
      it "assigns the posto as @posto" do
        posto = Posto.create! valid_attributes
        put :update, {:id => posto.to_param, :posto => invalid_attributes}, valid_session
        expect(assigns(:posto)).to eq(posto)
      end

      it "re-renders the 'edit' template" do
        posto = Posto.create! valid_attributes
        put :update, {:id => posto.to_param, :posto => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested posto" do
      posto = Posto.create! valid_attributes
      expect {
        delete :destroy, {:id => posto.to_param}, valid_session
      }.to change(Posto, :count).by(-1)
    end

    it "redirects to the postos list" do
      posto = Posto.create! valid_attributes
      delete :destroy, {:id => posto.to_param}, valid_session
      expect(response).to redirect_to(postos_url)
    end
  end

end
