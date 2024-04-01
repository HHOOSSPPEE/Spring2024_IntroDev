// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Item(_data){
	return {
        data: _data,
        next: undefined,
		prev: undefined
    };
}

function LinkedList() {
    var linked_list_cons = {
        head: undefined,
        tail: undefined,
		prev: undefined,
        sizes: 0,
		
		
		
		//remove all the item inventory
		clear: function (){
			self.head = noone;
			self.tail = noone;
			self.sizes = 0;
		},
		
		size: function (){
			return self.sizes;
		},
		
		//if it's added return true, if not return fale
		add: function (index, data) {
			if (data == undefined) return false;
			if (index < 0 || index > self.sizes) {
	                return false; // Invalid index
	            }
		
			var newItem = data;
		
			//add it to the first one
	        if (index == 0){
				//if head is not empty
				if (self.head != undefined){
					newItem.next = self.head;
					self.head.prev = newItem;
				}
				else{
					self.tail = newItem;
				}
				self.head = newItem;
			}
			//insert at the tail
			else if (index == self.sizes){
				newItem.prev = self.tail;
			
				if (self.tail != undefined){
					self.tail.next = newItem;
				}
				
				self.tail = newItem;
			}
			//insert somewhere in the middle
			else{
				var current = self.head;
				for (var i = 0; i < index; i++){
					current = current.next;
				}
				
				newItem.next = current;
				newItem.prev = current.prev;
				current.prev.next = newItem;
				current.prev = newItem;
			}
			
			self.sizes++;
			return true;
	    },
		
		//return true if item is successfully removed;
		remove: function (index){
			if (index < 0 || index >= self.sizes || self.head == undefined) {
                return false; // Invalid index or empty list
            }
			
			var current = self.head;
			
			// Remove the head
            if (index == 0) { 
                self.head = self.head.next;
                if (self.head != undefined) {
                    self.head.prev = undefined;
                } else {
					// List became empty
                    self.tail = undefined;
                }
            } 
			//remove at index
			else {
				//find the one need to be removed and store in current
                for (var i = 0; i < index; i++) {
                    current = current.next;
                }
				
                if (current.prev != undefined) {
                    current.prev.next = current.next;
                }
                if (current.next != undefined) {
                    current.next.prev = current.prev;
                }
				// Removed the tail
                if (current == self.tail) { 
                    self.tail = current.prev;
                }
			}
            self.sizes--;
            return true;
		},
		
		//return true if the list is empty
		isEmpty: function () {
			if (self.head == undefined) {
				return true;
			}
			return false;
		},
		
		//swap item a and b, return true if swapped, false otherwise
		swap: function(itemA, itemB) {
            if (itemA < 0 || itemA >= self.sizes || itemB < 0 || itemB >= self.sizes || itemA == itemB) {
                return false; // Invalid indices or the same index
            }

            var nodeA = self.searchItem(itemA);
            var nodeB = self.searchItem(itemB);

            // If either node wasn't found (which shouldn't happen given the checks), don't proceed
            if (nodeA == noone || nodeB == noone) {
                return false;
            }

            // Swap data only, not the actual nodes, to simplify the process
            var tempData = nodeA.data;
            nodeA.data = nodeB.data;
            nodeB.data = tempData;

            return true; // Successful swap
        },
		
		//searches for an item and return it, return null if no item found
		searchItem: function(index) {
            var current = self.head;
			var currentIndex = 0;
			
            while (current != noone) {
                if (currentIndex == index) { // Assumes items have an 'identifier' field
                    return current; // Item found, return the node
                }
                current = current.next;
				currentIndex++;
            }
            return noone; // Item not found
        },
    };
	
	return linked_list_cons;
}