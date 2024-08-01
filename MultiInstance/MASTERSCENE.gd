extends Node2D

var saveLoc = "user://Kinitopet_DATA/Instance.DATA"
var DATA = {"res://-Scenes/NewInstance/1/1.tscn": false}

var finished_File = false

func create_file():
	var file = File.new()
	if file.file_exists(saveLoc):
		file.open(saveLoc,File.READ)
		DATA = file.get_var()
		file.close()
	else:
		file.open(saveLoc,File.WRITE)
		file.store_var(DATA)
		file.close()
	finished_File = true

func read_file():
	var file = File.new()
	var finalFile = file.open(saveLoc,File.READ)
	DATA = finalFile.get_var()
	file.close()
func write_file():
	var file = File.new()
	file.open(saveLoc,File.WRITE)
	file.store_var(DATA)
	file.close()

func openInst():
	var key = DATA.keys()[0]
	App.data["open"][0] = false
	App._save()
	DATA[key] = true
	write_file()
	App.open(0)

func _ready():
	create_file()
	while !finished_File:
		yield(get_tree(),"idle_frame")
	var key = DATA.keys()[0]
	if DATA[key] == false:
		#openInst()
		pass
	else:
		var scene = key
		get_tree().change_scene(scene)
		DATA.erase(key)
		write_file()


func _notification(what):
	if what == NOTIFICATION_WM_QUIT_REQUEST or what == NOTIFICATION_EXIT_TREE:
		DATA.clear()
		DATA["res://-Scenes/NewInstance/1/1.tscn"] = false
		write_file()
	pass

# MANUALLY REPLACE KINITO IN UR MOD, REMEMBER TO REPLACE APP.EXTERNAL FUNC TO MODLOCATION.openInst()

#onready var kinitoscene = preload("res://MultiInstance/Scenes/Kinito.tscn")
#var kintiopatch = false
#
#func _process(_delta):
#	if Tab.data["open"][1] == true and !kintiopatch:
#		kintiopatch = true
#		var kinitopatch_scene = kinitoscene.instance()
#		var applic = get_parent().get_parent().get_node("1").get_child(0)
#		applic.get_parent().add_child(kinitopatch_scene)
#		applic.queue_free()
#		print("replaced")
##		var kill_var = null
##		kill_var.kill()
#	elif Tab.data["open"][1] == false and kintiopatch:
#		kintiopatch = false

