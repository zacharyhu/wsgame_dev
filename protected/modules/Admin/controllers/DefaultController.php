<?php

// class DefaultController extends Controller
class DefaultController extends SBaseController
{
	public function actionIndex()
	{
		$this->render('index');
	}
}