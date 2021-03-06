//
//  PostView.swift
//  recipeat
//
//  Created by 윤진영 on 2020/10/15.
//

import SwiftUI

struct PostView: View {
    
    var passed_postingUser: String
    var passed_description: String
    var passed_numberOfLikes: Int
    var passed_image: Image
    
    var body: some View {
        
        VStack(spacing: 0){
            passed_image
                .frame(height: 300)
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color.init(red: 0.95, green: 0.95, blue: 0.95).opacity(0.6))
            
            HStack{
                VStack(alignment: .leading){
                    Text("3 Ingredients")
                        .foregroundColor(.init(red: 237/255, green: 192/255, blue: 69/255))
                    Text("15 steps")
                        .foregroundColor(.init(red: 237/255, green: 86/255, blue: 69/255))
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("Prep-time: 15 minutes")
                        .foregroundColor(.init(red: 108/255, green: 204/255, blue: 108/255))
                    Text("Cook-time: 35 minutes")
                        .foregroundColor(.init(red: 108/255, green: 172/255, blue: 204/255))
                }
            }.font(.system(size: 15, weight: .bold))
            .padding(.top)
            .padding(.leading)
            .padding(.trailing)
            
            
            
            VStack {
                HStack{
                    Image(systemName: "heart")
                    Image(systemName: "envelope")
                    Spacer()
                    Image(systemName: "bookmark")
                }
                
                HStack{
                    Text("\(passed_postingUser)")
                    Text("\(passed_numberOfLikes) likes")
                        .foregroundColor(.gray)
                    Spacer()
                }.font(.system(size: 12, weight: .bold))
                HStack{
                    Text("\(passed_description)")
                    Spacer()
                }.font(.system(size: 12, weight: .regular))
            }.padding()
//            .background(Color.orange)
            
            
        }
//        .background(Color.yellow)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(passed_postingUser: "chris", passed_description: "this is a description for this post.this is a description for this post.this is a description for this post.this is a description for this post.this is a description for this post.", passed_numberOfLikes: 1000, passed_image: Image(systemName: "heart.fill"))
    }
}
