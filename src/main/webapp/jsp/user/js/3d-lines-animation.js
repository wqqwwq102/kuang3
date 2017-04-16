function hasClass(obj, cls){
    var obj_class = obj.className;//获取 class 内容.
    var obj_class_lst = obj_class.split(/\s+/);//通过split空字符将cls转换成数组.
    var x = 0;
    for(x in obj_class_lst) {
        if(obj_class_lst[x] == cls) {//循环数组, 判断是否包含cls
            return true;
        }
    }
    return false;
}



var mouseX = 0, mouseY = 0,

            windowHalfX = window.innerWidth / 2,
            windowHalfY = window.innerHeight / 2,

            SEPARATION = 200,
            AMOUNTX = 1,
            AMOUNTY = 1,

            camera, scene, renderer;
           window.addEventListener("load", function() {
   init();
           animate();
}, false);
          
  			
  			
            

            function init() {


                /*
                 *   Define variables
                 */
                var container, separation = 1000, amountX = 50, amountY = 50, color = 0xffffff,
                particles, particle;

                container = document.getElementById("canvas");


                camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 1, 10000 );
                camera.position.z = 1400; //相机深度，默认100

                scene = new THREE.Scene();
               

                renderer = new THREE.CanvasRenderer({ alpha: true });
                renderer.setPixelRatio( window.devicePixelRatio );
                renderer.setClearColor( 0x000000, 0 );   // canvas background color
                renderer.setSize( window.innerWidth, window.innerHeight );
               
                container.appendChild( renderer.domElement );

               

                var PI2 = Math.PI * 2;
                var material = new THREE.SpriteCanvasMaterial( {

                    color: color,
                    opacity: 0.5,
                    program: function ( context ) {

                        context.beginPath();
                        context.arc( 0, 0, 0.5, 0, PI2, true );
                        context.fill();

                    }

                } );

                var geometry = new THREE.Geometry();
              

                /*
                 *   Number of particles
                 */
                for ( var i = 0; i < 200; i ++ ) {

                    particle = new THREE.Sprite( material ); //直径为2 的球体
                    particle.position.x = Math.random() * 2 - 1;
                    particle.position.y = Math.random() * 2 - 1;
                    particle.position.z = Math.random() * 2 - 1;
                    particle.position.normalize();
                    particle.position.multiplyScalar( Math.random() * 10 + 600 ); //600,610
                    particle.scale.x = particle.scale.y = Math.random() * 10; //圆点的直径为随机

                    scene.add( particle );

                    geometry.vertices.push( particle.position );

                }

                /*
                 *   Lines
                 */

                var line = new THREE.Line( geometry, new THREE.LineBasicMaterial( { color: color, opacity: 0.2,linewidth: 1 } ) );
                scene.add( line );

                document.addEventListener( 'mousemove', onDocumentMouseMove, false );
                document.addEventListener( 'touchstart', onDocumentTouchStart, false );
                document.addEventListener( 'touchmove', onDocumentTouchMove, false );

                //

                window.addEventListener( 'resize', onWindowResize, false );

            }
	
            function onWindowResize() {

                windowHalfX = window.innerWidth / 2;
                windowHalfY = window.innerHeight / 2;

                camera.aspect = window.innerWidth / window.innerHeight;
                camera.updateProjectionMatrix();

                renderer.setSize( window.innerWidth, window.innerHeight );

            }

            //

            function onDocumentMouseMove(event) {

                mouseX = (event.clientX - windowHalfX) * 0.5;
                mouseY = (event.clientY - windowHalfY) * 0.5;

            }

            function onDocumentTouchStart( event ) {

                if ( event.touches.length > 1 ) {

                    event.preventDefault();

                    mouseX = (event.touches[ 0 ].pageX - windowHalfX) * 0.7;
                    mouseY = (event.touches[ 0 ].pageY - windowHalfY) * 0.7;

                }

            }

            function onDocumentTouchMove( event ) {

                if ( event.touches.length == 1 ) {

                    event.preventDefault();

                    mouseX = event.touches[ 0 ].pageX - windowHalfX;
                    mouseY = event.touches[ 0 ].pageY - windowHalfY;

                }

            }

            //

            function animate() {

                requestAnimationFrame( animate );

                render();

            }

       function render() {

                camera.position.x += ( mouseX - camera.position.x ) * 0.1;
                camera.position.y += ( - mouseY + 200 - camera.position.y ) * 0.05;
                if (camera.position.z>600)
                 camera.position.z -=  2;
                
    			if (camera.position.z>100)
                 camera.position.z -=  1;

                else 
                camera.position.z=100;
               
                
                camera.lookAt( scene.position );

                renderer.render( scene, camera );

            }
