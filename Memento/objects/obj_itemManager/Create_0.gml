depth=-9999;

function create_item(_nome,_desc,_sprite) constructor
{
	nome= _nome;
	desc=_desc;
	sprite= _sprite;
}

global.item_list=
{
	burger: new create_item(
	"Burger"
	,"Mangialo"
	,spr_burger 
	)
	
	
}

inv=array_create(0);