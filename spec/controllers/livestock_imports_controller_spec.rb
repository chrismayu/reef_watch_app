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

describe LivestockImportsController do

  # This should return the minimal set of attributes required to create a valid
  # LivestockImport. As you add validations to LivestockImport, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LivestockImportsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all livestock_imports as @livestock_imports" do
      livestock_import = LivestockImport.create! valid_attributes
      get :index, {}, valid_session
      assigns(:livestock_imports).should eq([livestock_import])
    end
  end

  describe "GET show" do
    it "assigns the requested livestock_import as @livestock_import" do
      livestock_import = LivestockImport.create! valid_attributes
      get :show, {:id => livestock_import.to_param}, valid_session
      assigns(:livestock_import).should eq(livestock_import)
    end
  end

  describe "GET new" do
    it "assigns a new livestock_import as @livestock_import" do
      get :new, {}, valid_session
      assigns(:livestock_import).should be_a_new(LivestockImport)
    end
  end

  describe "GET edit" do
    it "assigns the requested livestock_import as @livestock_import" do
      livestock_import = LivestockImport.create! valid_attributes
      get :edit, {:id => livestock_import.to_param}, valid_session
      assigns(:livestock_import).should eq(livestock_import)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new LivestockImport" do
        expect {
          post :create, {:livestock_import => valid_attributes}, valid_session
        }.to change(LivestockImport, :count).by(1)
      end

      it "assigns a newly created livestock_import as @livestock_import" do
        post :create, {:livestock_import => valid_attributes}, valid_session
        assigns(:livestock_import).should be_a(LivestockImport)
        assigns(:livestock_import).should be_persisted
      end

      it "redirects to the created livestock_import" do
        post :create, {:livestock_import => valid_attributes}, valid_session
        response.should redirect_to(LivestockImport.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved livestock_import as @livestock_import" do
        # Trigger the behavior that occurs when invalid params are submitted
        LivestockImport.any_instance.stub(:save).and_return(false)
        post :create, {:livestock_import => {  }}, valid_session
        assigns(:livestock_import).should be_a_new(LivestockImport)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        LivestockImport.any_instance.stub(:save).and_return(false)
        post :create, {:livestock_import => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested livestock_import" do
        livestock_import = LivestockImport.create! valid_attributes
        # Assuming there are no other livestock_imports in the database, this
        # specifies that the LivestockImport created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        LivestockImport.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, {:id => livestock_import.to_param, :livestock_import => { "these" => "params" }}, valid_session
      end

      it "assigns the requested livestock_import as @livestock_import" do
        livestock_import = LivestockImport.create! valid_attributes
        put :update, {:id => livestock_import.to_param, :livestock_import => valid_attributes}, valid_session
        assigns(:livestock_import).should eq(livestock_import)
      end

      it "redirects to the livestock_import" do
        livestock_import = LivestockImport.create! valid_attributes
        put :update, {:id => livestock_import.to_param, :livestock_import => valid_attributes}, valid_session
        response.should redirect_to(livestock_import)
      end
    end

    describe "with invalid params" do
      it "assigns the livestock_import as @livestock_import" do
        livestock_import = LivestockImport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LivestockImport.any_instance.stub(:save).and_return(false)
        put :update, {:id => livestock_import.to_param, :livestock_import => {  }}, valid_session
        assigns(:livestock_import).should eq(livestock_import)
      end

      it "re-renders the 'edit' template" do
        livestock_import = LivestockImport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LivestockImport.any_instance.stub(:save).and_return(false)
        put :update, {:id => livestock_import.to_param, :livestock_import => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested livestock_import" do
      livestock_import = LivestockImport.create! valid_attributes
      expect {
        delete :destroy, {:id => livestock_import.to_param}, valid_session
      }.to change(LivestockImport, :count).by(-1)
    end

    it "redirects to the livestock_imports list" do
      livestock_import = LivestockImport.create! valid_attributes
      delete :destroy, {:id => livestock_import.to_param}, valid_session
      response.should redirect_to(livestock_imports_url)
    end
  end

end
