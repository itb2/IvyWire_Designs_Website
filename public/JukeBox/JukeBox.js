


function backward(){


}

function forward(){


}

function shuffle(){


}

function Jukebox(songs){

	this.songs = [];
	var index = 0;
	this.addSongs = function(songName, songLocation){
		this.song = songName;
		 var bla = new Song(songName,songLocation,index);
		this.songs.push(songName);
		index ++;
	}
	this.listSongs = function(){	
		console.log(this.songs);
	}
	this.upNext = function(name){
		var upNext = "";
	}
	

}

function Song(name, location, index){
	this.name = name;
	this.index = index;
	this.location = location;
	var index = 0;
	this.songs = function(){}

	var myJukebox = new JukeBox(songs);
}



document.getElementById("nowPlaying").innerText = "myJukebox.songs[0}";
document.getElementById("nowPlaying").innerText = "Up Next: "+ "";