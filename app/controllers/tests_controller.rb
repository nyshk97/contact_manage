# frozen_string_literal: true

class TestsController < ApplicationController
  def index
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    if @test.save
      redirect_to tests_url
    else
      render 'tests/new'
    end
  end

  def edit
    @test = Test.find(params[:id])
  end

  def update
    @test = Test.find(params[:id])
    if @test.update(test_params)
      redirect_to tests_url
    else
      render 'tests/edit'
    end
  end

  def destroy
    @test = Test.find(params[:id])
    @test.destroy
    redirect_to tests_url
  end

  def receive_test
    @test = Test.new
    name = params[:name]
    @test.name = name
    @test.save!
    # flash[:success] = '新規タスク登録完了'
    # redirect_to root_url
  end

  private

  def test_params
    params.require(:test).permit(:name)
  end
end
