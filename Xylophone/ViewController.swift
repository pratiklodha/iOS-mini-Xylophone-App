
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(soundId: String) {
        let sound = Bundle.main.path(forResource: soundId, ofType: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            audioPlayer.play()
        } catch {
            print("Cannot play audio file")
        }
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        //print(sender.currentTitle!)
        playSound(soundId: sender.currentTitle!)
    }
    

}

