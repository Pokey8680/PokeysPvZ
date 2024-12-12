.class public Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;
.super Landroid/widget/EditText;
.source "VirtualKeyboardAndroidDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/blast/VirtualKeyboardAndroidDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TextField"
.end annotation


# instance fields
.field private final mDefaultText:Ljava/lang/CharSequence;

.field private final mDefaultTextLength:I

.field final synthetic this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;


# direct methods
.method constructor <init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)V
    .locals 1

    .prologue
    .line 326
    iput-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    .line 327
    invoke-static {p1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$100(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/MainActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 328
    const-string v0, "_ "

    iput-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->mDefaultText:Ljava/lang/CharSequence;

    .line 329
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->mDefaultText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->mDefaultTextLength:I

    .line 330
    return-void
.end method

.method private GetInputType()I
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$400(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_0

    .line 342
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$400(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I

    move-result v0

    :goto_0
    return v0

    .line 339
    :pswitch_0
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$400(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I

    move-result v0

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$500(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I

    move-result v1

    or-int/2addr v0, v1

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    goto :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private Hide()V
    .locals 3

    .prologue
    .line 350
    const-string v0, "Hide() from UiThread"

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$600(Ljava/lang/String;)V

    .line 353
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->clearFocus()V

    .line 354
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$100(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 355
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$700(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 356
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    iget-object v0, v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    iget-object v1, v1, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnKeyboardVisibilityChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private SetTextToDefault()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->mDefaultText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->mDefaultText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->mDefaultTextLength:I

    invoke-virtual {p0, v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->setSelection(I)V

    .line 397
    :cond_0
    return-void
.end method

.method private Show()V
    .locals 2

    .prologue
    .line 366
    const-string v0, "Show() from UiThread"

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$600(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->SetTextToDefault()V

    .line 373
    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->GetInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    or-int/lit16 v0, v0, 0x90

    invoke-virtual {p0, v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->setInputType(I)V

    .line 374
    const/high16 v0, 0x12000000

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$800(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->setImeOptions(I)V

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    iget-object v0, v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    iget-object v1, v1, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_0
    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->requestFocus()Z

    .line 383
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$100(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 384
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$700(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 386
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnKeyboardVisibilityChanged(Z)V

    .line 387
    return-void

    .line 380
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->Hide()V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->Show()V

    return-void
.end method


# virtual methods
.method public onEditorAction(I)V
    .locals 4
    .param p1, "actionCode"    # I

    .prologue
    const/16 v3, 0x42

    const/4 v2, 0x0

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEditorAction actionCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$600(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-virtual {v0, v3, v2}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnKeyDown(IZ)V

    .line 482
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-virtual {v0, v3, v2}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnKeyUp(IZ)V

    .line 483
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 452
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$600(Ljava/lang/String;)V

    .line 454
    invoke-static {p2}, Lcom/ea/blast/KeyboardAndroid;->IsVirtualKeyboardEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyPreIme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$600(Ljava/lang/String;)V

    .line 493
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->Hide()V

    .line 496
    const/4 v0, 0x1

    .line 500
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 462
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$600(Ljava/lang/String;)V

    .line 465
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnKeyDown(IZ)V

    .line 468
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnKeyUp(IZ)V

    .line 471
    :cond_0
    invoke-static {p2}, Lcom/ea/blast/KeyboardAndroid;->IsVirtualKeyboardEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    const/16 v4, 0x43

    const/4 v3, 0x0

    .line 404
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTextChanged Start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Before:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " After: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  FullText: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$600(Ljava/lang/String;)V

    .line 408
    if-nez p2, :cond_0

    iget v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->mDefaultTextLength:I

    if-ne p4, v1, :cond_0

    .line 411
    const-string v1, "Ignoring change due to reset"

    invoke-static {v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$600(Ljava/lang/String;)V

    .line 445
    :goto_0
    return-void

    .line 415
    :cond_0
    if-lez p3, :cond_1

    .line 418
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_1

    .line 420
    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-virtual {v1, v4, v3}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnKeyDown(IZ)V

    .line 421
    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-virtual {v1, v4, v3}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnKeyUp(IZ)V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 426
    .end local v0    # "i":I
    :cond_1
    if-lez p4, :cond_2

    .line 428
    move v0, p2

    .restart local v0    # "i":I
    :goto_2
    add-int v1, p2, p4

    if-ge v0, v1, :cond_2

    .line 430
    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeOnCharacter(I)V

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 434
    .end local v0    # "i":I
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->mDefaultTextLength:I

    if-ge v1, v2, :cond_3

    .line 437
    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->SetTextToDefault()V

    goto :goto_0

    .line 442
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->setSelection(I)V

    goto :goto_0
.end method
