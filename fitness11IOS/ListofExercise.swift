//
//  ListofExercise.swift
//  fitness11IOS
//
//  Created by Vinith kumar Tatipally on 2021-12-23.
//

import SwiftUI

struct ListofExercise: View {
   
    private let imagList: [ExerciseItems] = [
        ExerciseItems(imag: "frontplank", name: "Front Planks", description: "Planks are a great core stabilizing exercise.  Your entire core is stabilized through constant tension, so nothing is neglected and they are completely safe.  Get in pushup position on your forearms with your elbows bent.  Hold yourself up in a straight line and pull your belly button in to create tension.  Hold for as long as you can before your back sags to the floor.  For a more difficult variation, raise your opposite leg and arm off the ground."),
     ExerciseItems(imag: "sideplank", name: "Side Planks", description: "The side plank is the same concept as the front plank except this time you’ll be extended on your side with only one elbow and forearm on the ground.    Your other hand can point straight up in the air or rest of your hips.  Raise your hips off the ground and keep tension in the core to form a straight line with your body.  Hold until failure.  A variation of the side plank can be moving your hips in a side to side motion (up and down off the ground) for repetitions instead of holding still.  Side planks are great for targeting the obliques."),
     ExerciseItems(imag: "wheelroller", name: "AB wheel Rollouts", description: "For starters, get in a kneeling pushup position – like the plank but with your knees resting on the ground.  Hold the ab wheel between your hands and push it out in front of you going as far forward and as low to the ground as you are able while at the same time keeping your back straight and core tense.  Then, the hard part, is rolling the wheel back into the start position.  The only part of your body that should be on the ground are your knees and toes.  No more than 10 rollouts per set are needed with the ab roller."),
     ExerciseItems(imag: "windsheildwipers", name: "WindShield Wipers", description: "Lay flat on your back with your arms extended out on the ground in a “T” shape for stability as needed.  Start with your legs 90º vertical in the air.  Keeping them together, let your legs fall to a side until they are just a few inches off the ground.  Make sure to keep your back and shoulders planted to the ground by only twisting at the waist.  Now lift your legs back to the starting position and repeat the movement to the other side.  These will absolutely obliterate your obliques."),
     ExerciseItems(imag: "legsexr", name: "Lying Leg Raises", description: "There are many ways to change up lying leg raises to keep the routine from becoming too dull.  While holding your legs a foot above the ground, them over one another horizontally like they are a pair of scissors and keep crossing until failure.  Or cross them up and down vertically.  Or hold them together and move them in little circles.  Or perform the bicycle motion with your legs.  Endless possibilities."),
     ExerciseItems(imag: "tiptoe", name: "Tip Toe Sumo Squats", description:"Start in a traditional squat stance with your feet about shoulder-width apart and toes pointed forward. Clasp your hands together at your chest.Take a step to the side with your right foot until your stance is 3–4 feet wide, or wider than hip width. Wider is OK as long as you can perform the move correctly.Angle your toes out and away from the center of your body (about 45 degrees) by laterally rotating at the hip. Make sure your knees are still tracking over your toes."),
     ExerciseItems(imag: "sidetwist", name: "Standing Twists", description: "It’s rumored that Russian shot putters created this exercise to strengthen their rotational throwing motions.  The Russian twist can be performed on the ground in a situp position with the legs hovering above the ground and a medicine ball between your hands.  However, we’re going to avoid this method because of the high likelihood that the back is going to round quickly as it fatigues."),
        ExerciseItems(imag: "squats", name: "Squats", description: " A squat is a strength exercise in which the trainee lowers their hips from a standing position and then stands back up. During the descent of a squat, the hip and knee joints flex while the ankle joint dorsiflexes; conversely the hip and knee joints extend and the ankle joint plantarflexes when standing up. Squats are considered a vital exercise for increasing the strength and size of the lower body muscles as well as developing core strength."),

    ]
    
    
    
    var body: some View {
        
        //Color.gray.edgesIgnoringSafeArea(.all)
        //NavigationView{
            List(imagList) { imagItem in
                NavigationLink(destination: DetailsView(ExItem:imagItem)){
                    HStack {
                        ImageCircleView(imagItem:imagItem)
                        Text(imagItem.name).font(.headline).foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 0 / 255))
                    }.padding(7)
                }
            }.navigationBarTitle("Exercise List")
           // }
    }
}

struct DetailsView: View {
    let ExItem:ExerciseItems
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {

                Spacer()
                Text(ExItem.name).font(.largeTitle).bold()
                
                Spacer()
            }
            VStack{
            Image(ExItem.imag).resizable()
                .shadow(radius: 2)
                .frame(width: 400, height: 300)
            
            
                Text(ExItem.description).frame(width: 350, height: 400, alignment: Alignment.center).font(.title3).foregroundColor(Color(red: 153 / 255, green: 0 / 255, blue: 0 / 255))
        Spacer()
            }.padding(.top)
        }
        .padding()
        .navigationBarTitle(Text(ExItem.name), displayMode: .inline)
       // .background(Color.gray).edgesIgnoringSafeArea(.all)
    }
}
struct ImageCircleView: View{
    let imagItem: ExerciseItems
    var body: some View{
        ZStack{
            Image(imagItem.imag).resizable()
                .shadow(radius: 3)
                .font(.largeTitle)
                .frame(width: 65, height: 65)
                
        }
}
    }
struct ExerciseItems: Identifiable{
    let id = UUID()
    let  imag:String
    let name:String
    let description:String
}

struct ListofExercise_Previews: PreviewProvider {
    static var previews: some View {
        ListofExercise()
    }
}
