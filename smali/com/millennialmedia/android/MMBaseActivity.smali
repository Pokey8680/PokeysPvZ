.class Lcom/millennialmedia/android/MMBaseActivity;
.super Ljava/lang/Object;
.source "MMBaseActivity.java"


# instance fields
.field activity:Lcom/millennialmedia/android/MMActivity;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->dispatchTouchEventSuper(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->finishSuper()V

    .line 164
    return-void
.end method

.method public getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/millennialmedia/android/MMActivity;->onActivityResultSuper(IILandroid/content/Intent;)V

    .line 76
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->onConfigurationChangedSuper(Landroid/content/res/Configuration;)V

    .line 184
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->onCreateSuper(Landroid/os/Bundle;)V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->onDestroySuper()V

    .line 31
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMActivity;->onKeyDownSuper(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->onPauseSuper()V

    .line 56
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->onRestartSuper()V

    .line 46
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->onRestoreInstanceStateSuper(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->onResumeSuper()V

    .line 51
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->onRetainNonConfigurationInstanceSuper()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->onSaveInstanceStateSuper(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->onStartSuper()V

    .line 36
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->onStopSuper()V

    .line 41
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 178
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->onWindowFocusChangedSuper(Z)V

    .line 179
    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->setContentView(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 1
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->setRequestedOrientation(I)V

    .line 123
    return-void
.end method

.method public final setResult(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->setResult(I)V

    .line 128
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->setTheme(I)V

    .line 133
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 159
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/millennialmedia/android/MMBaseActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    return-void
.end method
