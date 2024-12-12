.class Lorg/restlet/engine/io/NbChannelInputStream$1;
.super Ljava/lang/Object;
.source "NbChannelInputStream.java"

# interfaces
.implements Lorg/restlet/util/SelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/io/NbChannelInputStream;->onFill(Lorg/restlet/engine/io/Buffer;[Ljava/lang/Object;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/engine/io/NbChannelInputStream;


# direct methods
.method constructor <init>(Lorg/restlet/engine/io/NbChannelInputStream;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lorg/restlet/engine/io/NbChannelInputStream$1;->this$0:Lorg/restlet/engine/io/NbChannelInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Lorg/restlet/util/SelectionRegistration;)V
    .locals 3
    .param p1, "selectionRegistration"    # Lorg/restlet/util/SelectionRegistration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v2, "NbChannelInputStream selected"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 219
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/util/SelectionRegistration;->suspend()V

    .line 222
    invoke-virtual {p1}, Lorg/restlet/util/SelectionRegistration;->unblock()V

    .line 223
    return-void
.end method
