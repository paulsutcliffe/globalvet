require 'spec_helper'

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

describe ReinosController do

  # This should return the minimal set of attributes required to create a valid
  # Reino. As you add validations to Reino, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "nombre" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ReinosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all reinos as @reinos" do
      reino = Reino.create! valid_attributes
      get :index, {}, valid_session
      assigns(:reinos).should eq([reino])
    end
  end

  describe "GET show" do
    it "assigns the requested reino as @reino" do
      reino = Reino.create! valid_attributes
      get :show, {:id => reino.to_param}, valid_session
      assigns(:reino).should eq(reino)
    end
  end

  describe "GET new" do
    it "assigns a new reino as @reino" do
      get :new, {}, valid_session
      assigns(:reino).should be_a_new(Reino)
    end
  end

  describe "GET edit" do
    it "assigns the requested reino as @reino" do
      reino = Reino.create! valid_attributes
      get :edit, {:id => reino.to_param}, valid_session
      assigns(:reino).should eq(reino)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Reino" do
        expect {
          post :create, {:reino => valid_attributes}, valid_session
        }.to change(Reino, :count).by(1)
      end

      it "assigns a newly created reino as @reino" do
        post :create, {:reino => valid_attributes}, valid_session
        assigns(:reino).should be_a(Reino)
        assigns(:reino).should be_persisted
      end

      it "redirects to the created reino" do
        post :create, {:reino => valid_attributes}, valid_session
        response.should redirect_to(Reino.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved reino as @reino" do
        # Trigger the behavior that occurs when invalid params are submitted
        Reino.any_instance.stub(:save).and_return(false)
        post :create, {:reino => { "nombre" => "invalid value" }}, valid_session
        assigns(:reino).should be_a_new(Reino)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Reino.any_instance.stub(:save).and_return(false)
        post :create, {:reino => { "nombre" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested reino" do
        reino = Reino.create! valid_attributes
        # Assuming there are no other reinos in the database, this
        # specifies that the Reino created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Reino.any_instance.should_receive(:update_attributes).with({ "nombre" => "MyString" })
        put :update, {:id => reino.to_param, :reino => { "nombre" => "MyString" }}, valid_session
      end

      it "assigns the requested reino as @reino" do
        reino = Reino.create! valid_attributes
        put :update, {:id => reino.to_param, :reino => valid_attributes}, valid_session
        assigns(:reino).should eq(reino)
      end

      it "redirects to the reino" do
        reino = Reino.create! valid_attributes
        put :update, {:id => reino.to_param, :reino => valid_attributes}, valid_session
        response.should redirect_to(reino)
      end
    end

    describe "with invalid params" do
      it "assigns the reino as @reino" do
        reino = Reino.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Reino.any_instance.stub(:save).and_return(false)
        put :update, {:id => reino.to_param, :reino => { "nombre" => "invalid value" }}, valid_session
        assigns(:reino).should eq(reino)
      end

      it "re-renders the 'edit' template" do
        reino = Reino.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Reino.any_instance.stub(:save).and_return(false)
        put :update, {:id => reino.to_param, :reino => { "nombre" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested reino" do
      reino = Reino.create! valid_attributes
      expect {
        delete :destroy, {:id => reino.to_param}, valid_session
      }.to change(Reino, :count).by(-1)
    end

    it "redirects to the reinos list" do
      reino = Reino.create! valid_attributes
      delete :destroy, {:id => reino.to_param}, valid_session
      response.should redirect_to(reinos_url)
    end
  end

end