//
//  PlusViewController.swift
//  KotaKadai7
//
//  Created by 前田航汰 on 2022/02/04.
//

import UIKit

class PlusViewController: UIViewController {

    @IBOutlet private weak var firstNumberTextField: UITextField!
    @IBOutlet private weak var secondNumberTextField: UITextField!
    @IBOutlet private weak var answerTextLabel: UILabel!

    @IBAction private func didTapPlusButton(_ sender: Any) {

        self.view.endEditing(true)

        guard let firstNumberInt = Int(firstNumberTextField.text ?? "") else {
            answerTextLabel.text = "適切な数値が入力されていません"
            return
        }

        guard let secondNumberInt = Int(secondNumberTextField.text ?? "") else {
            answerTextLabel.text = "適切な数値が入力されていません"
            return
        }

        answerTextLabel.text = String(firstNumberInt + secondNumberInt)
    }
}
