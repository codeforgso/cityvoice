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

describe VoiceTranscriptionsController do

  # This should return the minimal set of attributes required to create a valid
  # VoiceTranscription. As you add validations to VoiceTranscription, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "content" => "MyText" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VoiceTranscriptionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all voice_transcriptions as @voice_transcriptions" do
      voice_transcription = VoiceTranscription.create! valid_attributes
      get :index, {}, valid_session
      assigns(:voice_transcriptions).should eq([voice_transcription])
    end
  end

  describe "GET show" do
    it "assigns the requested voice_transcription as @voice_transcription" do
      voice_transcription = VoiceTranscription.create! valid_attributes
      get :show, {:id => voice_transcription.to_param}, valid_session
      assigns(:voice_transcription).should eq(voice_transcription)
    end
  end

  describe "GET new" do
    it "assigns a new voice_transcription as @voice_transcription" do
      get :new, {}, valid_session
      assigns(:voice_transcription).should be_a_new(VoiceTranscription)
    end
  end

  describe "GET edit" do
    it "assigns the requested voice_transcription as @voice_transcription" do
      voice_transcription = VoiceTranscription.create! valid_attributes
      get :edit, {:id => voice_transcription.to_param}, valid_session
      assigns(:voice_transcription).should eq(voice_transcription)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new VoiceTranscription" do
        expect {
          post :create, {:voice_transcription => valid_attributes}, valid_session
        }.to change(VoiceTranscription, :count).by(1)
      end

      it "assigns a newly created voice_transcription as @voice_transcription" do
        post :create, {:voice_transcription => valid_attributes}, valid_session
        assigns(:voice_transcription).should be_a(VoiceTranscription)
        assigns(:voice_transcription).should be_persisted
      end

      it "redirects to the created voice_transcription" do
        post :create, {:voice_transcription => valid_attributes}, valid_session
        response.should redirect_to(VoiceTranscription.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved voice_transcription as @voice_transcription" do
        # Trigger the behavior that occurs when invalid params are submitted
        VoiceTranscription.any_instance.stub(:save).and_return(false)
        post :create, {:voice_transcription => { "content" => "invalid value" }}, valid_session
        assigns(:voice_transcription).should be_a_new(VoiceTranscription)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        VoiceTranscription.any_instance.stub(:save).and_return(false)
        post :create, {:voice_transcription => { "content" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested voice_transcription" do
        voice_transcription = VoiceTranscription.create! valid_attributes
        # Assuming there are no other voice_transcriptions in the database, this
        # specifies that the VoiceTranscription created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        VoiceTranscription.any_instance.should_receive(:update).with({ "content" => "MyText" })
        put :update, {:id => voice_transcription.to_param, :voice_transcription => { "content" => "MyText" }}, valid_session
      end

      it "assigns the requested voice_transcription as @voice_transcription" do
        voice_transcription = VoiceTranscription.create! valid_attributes
        put :update, {:id => voice_transcription.to_param, :voice_transcription => valid_attributes}, valid_session
        assigns(:voice_transcription).should eq(voice_transcription)
      end

      it "redirects to the voice_transcription" do
        voice_transcription = VoiceTranscription.create! valid_attributes
        put :update, {:id => voice_transcription.to_param, :voice_transcription => valid_attributes}, valid_session
        response.should redirect_to(voice_transcription)
      end
    end

    describe "with invalid params" do
      it "assigns the voice_transcription as @voice_transcription" do
        voice_transcription = VoiceTranscription.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        VoiceTranscription.any_instance.stub(:save).and_return(false)
        put :update, {:id => voice_transcription.to_param, :voice_transcription => { "content" => "invalid value" }}, valid_session
        assigns(:voice_transcription).should eq(voice_transcription)
      end

      it "re-renders the 'edit' template" do
        voice_transcription = VoiceTranscription.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        VoiceTranscription.any_instance.stub(:save).and_return(false)
        put :update, {:id => voice_transcription.to_param, :voice_transcription => { "content" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested voice_transcription" do
      voice_transcription = VoiceTranscription.create! valid_attributes
      expect {
        delete :destroy, {:id => voice_transcription.to_param}, valid_session
      }.to change(VoiceTranscription, :count).by(-1)
    end

    it "redirects to the voice_transcriptions list" do
      voice_transcription = VoiceTranscription.create! valid_attributes
      delete :destroy, {:id => voice_transcription.to_param}, valid_session
      response.should redirect_to(voice_transcriptions_url)
    end
  end

end
