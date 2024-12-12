.class Lcom/ea/blast/MotionEventAndroid;
.super Ljava/lang/Object;
.source "MotionEventAndroid.java"


# static fields
.field private static final UI_SLEEP_TIME_MS:I = 0xc


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget v0, Lcom/ea/blast/MouseAndroid;->kIdUndefined:I

    sget v1, Lcom/ea/blast/TouchSurfaceAndroid;->kIdUndefined:I

    if-eq v0, v1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ASSERTION: MouseAndroid.kIdUndefined != TouchSurfaceAndroid.kIdUndefined"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    return-void
.end method

.method private static ActionToBlastRawMsgId(II)I
    .locals 1
    .param p0, "blastModuleId"    # I
    .param p1, "action"    # I

    .prologue
    .line 67
    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchPad:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchScreen:I

    if-ne p0, v0, :cond_1

    .line 69
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 77
    :pswitch_0
    sget v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdUndefined:I

    .line 95
    :goto_0
    return v0

    .line 71
    :pswitch_1
    sget v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerDown:I

    goto :goto_0

    .line 72
    :pswitch_2
    sget v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerUp:I

    goto :goto_0

    .line 73
    :pswitch_3
    sget v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerMove:I

    goto :goto_0

    .line 74
    :pswitch_4
    sget v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerCancel:I

    goto :goto_0

    .line 75
    :pswitch_5
    sget v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerDown:I

    goto :goto_0

    .line 76
    :pswitch_6
    sget v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerUp:I

    goto :goto_0

    .line 80
    :cond_1
    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdMouse:I

    if-ne p0, v0, :cond_2

    .line 82
    packed-switch p1, :pswitch_data_1

    .line 89
    :pswitch_7
    sget v0, Lcom/ea/blast/MouseAndroid;->kIdUndefined:I

    goto :goto_0

    .line 84
    :pswitch_8
    sget v0, Lcom/ea/blast/MouseAndroid;->kIdRawMouseDown:I

    goto :goto_0

    .line 85
    :pswitch_9
    sget v0, Lcom/ea/blast/MouseAndroid;->kIdRawMouseUp:I

    goto :goto_0

    .line 86
    :pswitch_a
    sget v0, Lcom/ea/blast/MouseAndroid;->kIdRawMouseMove:I

    goto :goto_0

    .line 87
    :pswitch_b
    sget v0, Lcom/ea/blast/MouseAndroid;->kIdRawMouseDown:I

    goto :goto_0

    .line 88
    :pswitch_c
    sget v0, Lcom/ea/blast/MouseAndroid;->kIdRawMouseUp:I

    goto :goto_0

    .line 95
    :cond_2
    sget v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdUndefined:I

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 82
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private GetBlastModuleId(Landroid/view/MotionEvent;)I
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 29
    .local v0, "source":I
    const v1, 0x100008

    if-ne v0, v1, :cond_0

    .line 31
    sget v1, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchPad:I

    .line 60
    :goto_0
    return v1

    .line 33
    :cond_0
    const/16 v1, 0x1002

    if-ne v0, v1, :cond_1

    .line 35
    sget v1, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchScreen:I

    goto :goto_0

    .line 37
    :cond_1
    const/16 v1, 0x2002

    if-ne v0, v1, :cond_2

    .line 39
    sget v1, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdMouse:I

    goto :goto_0

    .line 41
    :cond_2
    const/16 v1, 0x5002

    if-ne v0, v1, :cond_3

    .line 44
    sget v1, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchScreen:I

    goto :goto_0

    .line 46
    :cond_3
    const/16 v1, 0x6002

    if-ne v0, v1, :cond_4

    .line 49
    sget v1, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdMouse:I

    goto :goto_0

    .line 51
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_5

    .line 53
    const/16 v1, 0x4002

    if-ne v0, v1, :cond_5

    .line 56
    sget v1, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdMouse:I

    goto :goto_0

    .line 60
    :cond_5
    sget v1, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdInvalid:I

    goto :goto_0
.end method

.method private static GetBlastMouseButton(Landroid/view/MotionEvent;I)I
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "blastRawMsgId"    # I

    .prologue
    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 104
    sget v0, Lcom/ea/blast/MouseAndroid;->kIdRawMouseDown:I

    if-ne p1, v0, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    :pswitch_0
    sget v0, Lcom/ea/blast/MouseAndroid;->kMouseButtonNone:I

    .line 116
    :goto_0
    return v0

    .line 108
    :pswitch_1
    sget v0, Lcom/ea/blast/MouseAndroid;->kMouseButtonLeft:I

    goto :goto_0

    .line 109
    :pswitch_2
    sget v0, Lcom/ea/blast/MouseAndroid;->kMouseButtonRight:I

    goto :goto_0

    .line 110
    :pswitch_3
    sget v0, Lcom/ea/blast/MouseAndroid;->kMouseButtonCenter:I

    goto :goto_0

    .line 116
    :cond_0
    sget v0, Lcom/ea/blast/MouseAndroid;->kMouseButtonNone:I

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private SendMotionEventInternal(Landroid/view/MotionEvent;IIIFF)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .param p3, "blastRawMsgId"    # I
    .param p4, "blastModuleId"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 136
    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchPad:I

    if-eq p4, v0, :cond_0

    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchScreen:I

    if-ne p4, v0, :cond_2

    .line 138
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-static {p3, p4, v0, p5, p6}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeOnPointerEvent(IIIFF)V

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdMouse:I

    if-ne p4, v0, :cond_1

    .line 142
    const/4 v7, 0x0

    .line 143
    .local v7, "mouseButtonModifier":I
    const/4 v8, 0x0

    .line 144
    .local v8, "scrollWheelAmount":I
    invoke-static {p1, p3}, Lcom/ea/blast/MotionEventAndroid;->GetBlastMouseButton(Landroid/view/MotionEvent;I)I

    move-result v2

    move v0, p3

    move v1, p4

    move v4, v3

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/ea/blast/MouseAndroid;->NativeOnMouseEvent(IIIIIFF)V

    goto :goto_0
.end method

.method private SendRawHistoricMotionEvent(Landroid/view/MotionEvent;IIII)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "historyIndex"    # I
    .param p3, "pointerIndex"    # I
    .param p4, "blastRawMsgId"    # I
    .param p5, "blastModuleId"    # I

    .prologue
    .line 129
    invoke-virtual {p1, p3, p2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v5

    invoke-virtual {p1, p3, p2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/ea/blast/MotionEventAndroid;->SendMotionEventInternal(Landroid/view/MotionEvent;IIIFF)V

    .line 131
    return-void
.end method

.method private SendRawMotionEvent(Landroid/view/MotionEvent;III)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I
    .param p3, "blastRawMsgId"    # I
    .param p4, "blastModuleId"    # I

    .prologue
    .line 122
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/ea/blast/MotionEventAndroid;->SendMotionEventInternal(Landroid/view/MotionEvent;IIIFF)V

    .line 124
    return-void
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    :cond_0
    const-wide/16 v0, 0xc

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_1
    :goto_0
    :pswitch_0
    return v2

    .line 214
    :catch_0
    move-exception v0

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 152
    .local v6, "action":I
    invoke-direct {p0, p1}, Lcom/ea/blast/MotionEventAndroid;->GetBlastModuleId(Landroid/view/MotionEvent;)I

    move-result v5

    .line 153
    .local v5, "blastModuleId":I
    invoke-static {v5, v6}, Lcom/ea/blast/MotionEventAndroid;->ActionToBlastRawMsgId(II)I

    move-result v4

    .line 155
    .local v4, "blastRawMsgId":I
    const/4 v0, 0x2

    if-ne v6, v0, :cond_2

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .line 158
    .local v7, "historySize":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 160
    .local v8, "pointerCount":I
    const/4 v2, 0x0

    .local v2, "iHistory":I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 162
    const/4 v3, 0x0

    .local v3, "iPointer":I
    :goto_1
    if-ge v3, v8, :cond_0

    move-object v0, p0

    move-object v1, p1

    .line 164
    invoke-direct/range {v0 .. v5}, Lcom/ea/blast/MotionEventAndroid;->SendRawHistoricMotionEvent(Landroid/view/MotionEvent;IIII)V

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 160
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v3    # "iPointer":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "iPointer":I
    :goto_2
    if-ge v3, v8, :cond_3

    .line 170
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/ea/blast/MotionEventAndroid;->SendRawMotionEvent(Landroid/view/MotionEvent;III)V

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 175
    .end local v2    # "iHistory":I
    .end local v3    # "iPointer":I
    .end local v7    # "historySize":I
    .end local v8    # "pointerCount":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0, v4, v5}, Lcom/ea/blast/MotionEventAndroid;->SendRawMotionEvent(Landroid/view/MotionEvent;III)V

    .line 182
    :cond_3
    const-wide/16 v0, 0xc

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 184
    :catch_0
    move-exception v0

    goto :goto_3
.end method
