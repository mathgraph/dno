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

describe OutingsController do

  # This should return the minimal set of attributes required to create a valid
  # Outing. As you add validations to Outing, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all outings as @outings" do
      outing = Outing.create! valid_attributes
      get :index
      assigns(:outings).should eq([outing])
    end
  end

  describe "GET show" do
    it "assigns the requested outing as @outing" do
      outing = Outing.create! valid_attributes
      get :show, :id => outing.id.to_s
      assigns(:outing).should eq(outing)
    end
  end

  describe "GET new" do
    it "assigns a new outing as @outing" do
      get :new
      assigns(:outing).should be_a_new(Outing)
    end
  end

  describe "GET edit" do
    it "assigns the requested outing as @outing" do
      outing = Outing.create! valid_attributes
      get :edit, :id => outing.id.to_s
      assigns(:outing).should eq(outing)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Outing" do
        expect {
          post :create, :outing => valid_attributes
        }.to change(Outing, :count).by(1)
      end

      it "assigns a newly created outing as @outing" do
        post :create, :outing => valid_attributes
        assigns(:outing).should be_a(Outing)
        assigns(:outing).should be_persisted
      end

      it "redirects to the created outing" do
        post :create, :outing => valid_attributes
        response.should redirect_to(Outing.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved outing as @outing" do
        # Trigger the behavior that occurs when invalid params are submitted
        Outing.any_instance.stub(:save).and_return(false)
        post :create, :outing => {}
        assigns(:outing).should be_a_new(Outing)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Outing.any_instance.stub(:save).and_return(false)
        post :create, :outing => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested outing" do
        outing = Outing.create! valid_attributes
        # Assuming there are no other outings in the database, this
        # specifies that the Outing created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Outing.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => outing.id, :outing => {'these' => 'params'}
      end

      it "assigns the requested outing as @outing" do
        outing = Outing.create! valid_attributes
        put :update, :id => outing.id, :outing => valid_attributes
        assigns(:outing).should eq(outing)
      end

      it "redirects to the outing" do
        outing = Outing.create! valid_attributes
        put :update, :id => outing.id, :outing => valid_attributes
        response.should redirect_to(outing)
      end
    end

    describe "with invalid params" do
      it "assigns the outing as @outing" do
        outing = Outing.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Outing.any_instance.stub(:save).and_return(false)
        put :update, :id => outing.id.to_s, :outing => {}
        assigns(:outing).should eq(outing)
      end

      it "re-renders the 'edit' template" do
        outing = Outing.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Outing.any_instance.stub(:save).and_return(false)
        put :update, :id => outing.id.to_s, :outing => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested outing" do
      outing = Outing.create! valid_attributes
      expect {
        delete :destroy, :id => outing.id.to_s
      }.to change(Outing, :count).by(-1)
    end

    it "redirects to the outings list" do
      outing = Outing.create! valid_attributes
      delete :destroy, :id => outing.id.to_s
      response.should redirect_to(outings_url)
    end
  end

end
