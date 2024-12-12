.class public Lcom/ea/InputMan/InputMan;
.super Ljava/lang/Object;
.source "InputMan.java"


# instance fields
.field private gbMotionEvent_GetSource:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/ea/InputMan/InputMan;->gbMotionEvent_GetSource:Z

    .line 29
    :try_start_0
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getSource"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 30
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ea/InputMan/InputMan;->gbMotionEvent_GetSource:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static GetEventType(I)I
    .locals 1
    .param p0, "action"    # I

    .prologue
    const/4 v0, 0x0

    .line 78
    packed-switch p0, :pswitch_data_0

    .line 99
    :goto_0
    :pswitch_0
    return v0

    .line 86
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 93
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private GetSource(Landroid/view/MotionEvent;)I
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 44
    const/4 v1, -0x1

    .line 46
    .local v1, "inputManSource":I
    iget-boolean v2, p0, Lcom/ea/InputMan/InputMan;->gbMotionEvent_GetSource:Z

    if-eqz v2, :cond_1

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 50
    .local v0, "eventSource":I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 52
    sparse-switch v0, :sswitch_data_0

    .line 63
    :goto_0
    const/4 v1, 0x0

    .line 71
    .end local v0    # "eventSource":I
    :cond_0
    :goto_1
    return v1

    .line 55
    .restart local v0    # "eventSource":I
    :sswitch_0
    const/16 v1, 0xa

    .line 56
    goto :goto_1

    .line 59
    :sswitch_1
    const/16 v1, 0x14

    goto :goto_0

    .line 69
    .end local v0    # "eventSource":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x2002 -> :sswitch_1
        0x100008 -> :sswitch_0
    .end sparse-switch
.end method

.method private static native InputMan_OnMotionEvent(IIFFIF)Z
.end method


# virtual methods
.method public onTouchEvent(ILandroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "touchSurface"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 165
    const/4 v12, 0x0

    .line 166
    .local v12, "returnValue":Z
    move-object/from16 v7, p2

    .line 167
    .local v7, "ev":Landroid/view/MotionEvent;
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v9

    .line 168
    .local v9, "historySize":I
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 169
    .local v11, "pointerCount":I
    invoke-direct {p0, v7}, Lcom/ea/InputMan/InputMan;->GetSource(Landroid/view/MotionEvent;)I

    move-result v13

    .line 170
    .local v13, "source":I
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 171
    .local v6, "action":I
    invoke-static {v6}, Lcom/ea/InputMan/InputMan;->GetEventType(I)I

    move-result v4

    .line 176
    .local v4, "eventType":I
    if-ltz v13, :cond_2

    .line 179
    const/4 v8, 0x0

    .local v8, "h":I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 181
    const/4 v10, 0x0

    .local v10, "p":I
    :goto_1
    if-ge v10, v11, :cond_0

    .line 183
    invoke-virtual {v7, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 184
    .local v1, "id":I
    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v2

    .line 185
    .local v2, "x":F
    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v3

    .line 186
    .local v3, "y":F
    invoke-virtual {v7, v10, v8}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v5

    .local v5, "strength":F
    move v0, p1

    .line 188
    invoke-static/range {v0 .. v5}, Lcom/ea/InputMan/InputMan;->InputMan_OnMotionEvent(IIFFIF)Z

    .line 181
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 179
    .end local v1    # "id":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v5    # "strength":F
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 193
    .end local v10    # "p":I
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "p":I
    :goto_2
    if-ge v10, v11, :cond_2

    .line 195
    invoke-virtual {v7, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 196
    .restart local v1    # "id":I
    invoke-virtual {v7, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 197
    .restart local v2    # "x":F
    invoke-virtual {v7, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 198
    .restart local v3    # "y":F
    invoke-virtual {v7, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v5

    .restart local v5    # "strength":F
    move v0, p1

    .line 200
    invoke-static/range {v0 .. v5}, Lcom/ea/InputMan/InputMan;->InputMan_OnMotionEvent(IIFFIF)Z

    move-result v12

    .line 193
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 213
    .end local v1    # "id":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v5    # "strength":F
    .end local v8    # "h":I
    .end local v10    # "p":I
    :cond_2
    return v12
.end method
