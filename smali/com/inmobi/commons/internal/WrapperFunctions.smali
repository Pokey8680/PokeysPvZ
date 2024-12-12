.class public Lcom/inmobi/commons/internal/WrapperFunctions;
.super Ljava/lang/Object;
.source "WrapperFunctions.java"


# static fields
.field private static a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/webkit/WebView;I)V
    .locals 5

    .prologue
    .line 285
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 288
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 304
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "Cannot set hardware accl"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 294
    :catch_1
    move-exception v0

    .line 295
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "Cannot set hardware accl"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 297
    :catch_2
    move-exception v0

    .line 298
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "Cannot set hardware accl"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 300
    :catch_3
    move-exception v0

    .line 301
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "Cannot set hardware accl"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static disableHardwareAccl(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->a(Landroid/webkit/WebView;I)V

    .line 308
    return-void
.end method

.method public static getCurrentOrientationInFixedValues(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v1, 0x1

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 355
    :goto_0
    return v0

    .line 328
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_0

    move v0, v1

    .line 329
    goto :goto_0

    .line 332
    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 333
    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 335
    :cond_1
    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    move v0, v1

    .line 337
    goto :goto_0

    .line 342
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_3

    move v0, v2

    .line 343
    goto :goto_0

    .line 345
    :cond_3
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 347
    if-eqz v0, :cond_4

    if-ne v0, v1, :cond_5

    :cond_4
    move v0, v2

    .line 349
    goto :goto_0

    :cond_5
    move v0, v3

    .line 351
    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDisplayHeight(Landroid/view/Display;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 169
    .line 171
    new-array v0, v3, [Ljava/lang/Class;

    .line 172
    const-class v4, Landroid/graphics/Point;

    aput-object v4, v0, v1

    .line 175
    :try_start_0
    const-class v4, Landroid/view/Display;

    const-string v5, "getSize"

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    move v0, v3

    .line 188
    :goto_0
    if-eqz v0, :cond_0

    .line 189
    :try_start_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 190
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget v0, v0, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 206
    :goto_1
    return v0

    .line 177
    :catch_0
    move-exception v0

    .line 179
    :try_start_2
    const-class v3, Landroid/view/Display;

    const-string v4, "getHeight"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 184
    goto :goto_0

    .line 181
    :catch_1
    move-exception v0

    .line 182
    const-string v3, "[InMobi]-4.4.3"

    const-string v4, "Cannot get display height"

    invoke-static {v3, v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    .line 193
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v0

    goto :goto_1

    .line 195
    :catch_2
    move-exception v0

    .line 196
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot get display height"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 204
    goto :goto_1

    .line 198
    :catch_3
    move-exception v0

    .line 199
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot get display height"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 204
    goto :goto_1

    .line 201
    :catch_4
    move-exception v0

    .line 202
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot get display height"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1
.end method

.method public static getDisplayWidth(Landroid/view/Display;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 128
    .line 130
    new-array v0, v3, [Ljava/lang/Class;

    .line 131
    const-class v4, Landroid/graphics/Point;

    aput-object v4, v0, v1

    .line 134
    :try_start_0
    const-class v4, Landroid/view/Display;

    const-string v5, "getSize"

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    move v0, v3

    .line 147
    :goto_0
    if-eqz v0, :cond_0

    .line 148
    :try_start_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 149
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget v0, v0, Landroid/graphics/Point;->x:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 165
    :goto_1
    return v0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    :try_start_2
    const-class v3, Landroid/view/Display;

    const-string v4, "getWidth"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 143
    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    const-string v3, "[InMobi]-4.4.3"

    const-string v4, "Cannot get display width"

    invoke-static {v3, v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0

    .line 152
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v0

    goto :goto_1

    .line 154
    :catch_2
    move-exception v0

    .line 155
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot get display width"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 163
    goto :goto_1

    .line 157
    :catch_3
    move-exception v0

    .line 158
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot get display width"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 163
    goto :goto_1

    .line 160
    :catch_4
    move-exception v0

    .line 161
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot get display width"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1
.end method

.method public static getParamConfigScreenSize()I
    .locals 4

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 47
    const-class v2, Landroid/content/pm/ActivityInfo;

    .line 50
    :try_start_0
    const-string v3, "CONFIG_SCREEN_SIZE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot get screen size"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 56
    :catch_1
    move-exception v1

    .line 57
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot get screen size"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getParamConfigSmallestScreenSize()I
    .locals 4

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 66
    const-class v2, Landroid/content/pm/ActivityInfo;

    .line 69
    :try_start_0
    const-string v3, "CONFIG_SMALLEST_SCREEN_SIZE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot get smallest screen size"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    :catch_1
    move-exception v1

    .line 77
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot get smallest screen size"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getParamFillParent()I
    .locals 6

    .prologue
    .line 210
    sget v0, Lcom/inmobi/commons/internal/WrapperFunctions;->a:I

    if-nez v0, :cond_1

    .line 211
    const-class v2, Lcom/inmobi/commons/internal/WrapperFunctions;

    monitor-enter v2

    .line 212
    :try_start_0
    sget v0, Lcom/inmobi/commons/internal/WrapperFunctions;->a:I

    if-nez v0, :cond_0

    .line 213
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 214
    const-class v0, Landroid/view/ViewGroup$LayoutParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    const/4 v1, 0x0

    .line 217
    :try_start_1
    const-string v4, "MATCH_PARENT"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 228
    :goto_0
    if-eqz v0, :cond_0

    .line 230
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/inmobi/commons/internal/WrapperFunctions;->a:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    :cond_1
    sget v0, Lcom/inmobi/commons/internal/WrapperFunctions;->a:I

    return v0

    .line 219
    :catch_0
    move-exception v4

    .line 221
    :try_start_4
    const-string v4, "FILL_PARENT"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 223
    :catch_1
    move-exception v0

    .line 224
    :try_start_5
    const-string v4, "[InMobi]-4.4.3"

    const-string v5, "Cannot get fill parent param"

    invoke-static {v4, v5, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 231
    :catch_2
    move-exception v0

    .line 232
    const-string v1, "[InMobi]-4.4.3"

    const-string v3, "Cannot get fill parent param"

    invoke-static {v1, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public static getParamLandscapeOrientation(I)I
    .locals 4

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 108
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 109
    const-class v2, Landroid/content/pm/ActivityInfo;

    .line 112
    :try_start_0
    const-string v3, "SCREEN_ORIENTATION_REVERSE_LANDSCAPE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot get landscape orientation"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 119
    :catch_1
    move-exception v1

    .line 120
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot get landscape orientation"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getParamPortraitOrientation(I)I
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x1

    .line 85
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 86
    new-instance v1, Landroid/content/pm/ActivityInfo;

    invoke-direct {v1}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 87
    const-class v2, Landroid/content/pm/ActivityInfo;

    .line 90
    :try_start_0
    const-string v3, "SCREEN_ORIENTATION_REVERSE_PORTRAIT"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot get portrait orientation"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 97
    :catch_1
    move-exception v1

    .line 98
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot get portrait orientation"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSSLErrorUrl(Landroid/net/http/SslError;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 314
    :try_start_0
    const-string v0, "android.net.http.SslError"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 315
    const-string v1, "getUrl"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 316
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    .line 318
    :catch_0
    move-exception v0

    .line 320
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "Cannot get SSL Url"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVideoBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    :try_start_0
    const-string v0, "android.media.ThumbnailUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 273
    const-string v1, "createVideoThumbnail"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 275
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "Cannot get video bitmap"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    throw v0
.end method
