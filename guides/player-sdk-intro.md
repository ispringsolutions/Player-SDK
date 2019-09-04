# Suite DX tutorial for Web-Developers

### 1. HTML page

Let's create simplest HTML page placeholder, and save it as "index.html"

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1"/>
    <title>Insert your title here</title>
  </head>
  <body>
    <h2>Here will be your presentation</h2>
    <!-- Presentation placeholder -->
  </body>
</html>
```

### 2. Publish Presentation

Now, let's convert our presentation using [iSpring Suite DX](http://www.ispringsolutions.com/ispring-suitedx).
For this tutorial, we will select the following output options:

- HTML5 output format
- "None (Slide Only)" when only the course slides are displayed
- JavaScript API is always enabled and will be available after publishing.

![iSpring Suite DX Publish Dialog, General tab](images/publish-general.png)

- Here you can choose the size of the presentation container. By default, it is scaled to 75% of the original slide size.

![iSpring Suite DX Publish Dialog, Advanced tab](images/publish-advanced.png)


Now it's time to go ahead and click Publish.
Once your presentation is published, please do the following:
- Create a new directory called "presentation" in the same location with your "index.html" file
- Copy converted presentation and its data into the "presentation" folder.

![presentation copying](images/presentation-folder-content.png)

### 3. Embed Presentation

The easiest way to embed your presentation is to insert it in the ```<iframe>```.
```diff
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1"/>
    <title>Insert your title here</title>
+    <style>
+        #presentation {
+            float: left;
+            width: 864px;
+            height: 540px;
+            border: 1px solid #000;
+        }
+     </style>
  </head>
  <body>
-    <h2>Here will be your presentation</h2>
-    <!-- Presentation placeholder -->
+    <div>
+      <iframe id="presentation" src="presentation/index.html"></iframe>
+    </div>
  </body>
</html>
```

### 4. Connect to Player

- Add a new text field which will be changed on presentation player start
- Add the javascript code below to animate it.

```diff
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1"/>
    <title>Insert your title here</title>
    <style>
        #presentation {
            width: 864px;
            height: 540px;
            border: 1px solid #000;
        }
+
+        #state-indicator {
+            float: left;
+            font: 18px 'Arial', sans-serif;
+            margin-left: 50px;
+        }
    </style>
  </head>
  <body>
    <div>
      <iframe id="presentation" src="presentation/index.html"></iframe>
    </div>
+    <p id="state-indicator">Presentation is not running yet</p>
+    <script>
+        var ispringPresentationConnector = {};
+
+        ispringPresentationConnector.register = function(player)
+        {
+            var indicator = document.getElementById("state-indicator");
+            indicator.innerHTML = "Presentation is running";
+        };
+    </script>
  </body>
</html>
```

### Read Next

- [HOWTO add navigation panel and outline](player-navigation-panel.md)

