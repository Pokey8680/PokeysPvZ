.class public Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;
.super Lroboguice/util/AndroidCallable;
.source "SafeAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lroboguice/util/SafeAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SafeAsyncTaskAndroidCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lroboguice/util/AndroidCallable",
        "<TResultT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lroboguice/util/SafeAsyncTask;


# direct methods
.method public constructor <init>(Lroboguice/util/SafeAsyncTask;)V
    .locals 0

    .prologue
    .line 160
    .local p0, "this":Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;, "Lroboguice/util/SafeAsyncTask<TResultT;>.SafeAsyncTaskAndroidCallable;"
    iput-object p1, p0, Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;->this$0:Lroboguice/util/SafeAsyncTask;

    invoke-direct {p0}, Lroboguice/util/AndroidCallable;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;, "Lroboguice/util/SafeAsyncTask<TResultT;>.SafeAsyncTaskAndroidCallable;"
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;->this$0:Lroboguice/util/SafeAsyncTask;

    invoke-virtual {v0}, Lroboguice/util/SafeAsyncTask;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 168
    .local p0, "this":Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;, "Lroboguice/util/SafeAsyncTask<TResultT;>.SafeAsyncTaskAndroidCallable;"
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;->this$0:Lroboguice/util/SafeAsyncTask;

    invoke-virtual {v0, p1}, Lroboguice/util/SafeAsyncTask;->onException(Ljava/lang/Exception;)V

    .line 169
    return-void
.end method

.method public onFinally()V
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;, "Lroboguice/util/SafeAsyncTask<TResultT;>.SafeAsyncTaskAndroidCallable;"
    iget-object v0, p0, Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;->this$0:Lroboguice/util/SafeAsyncTask;

    invoke-virtual {v0}, Lroboguice/util/SafeAsyncTask;->onFinally()V

    .line 174
    return-void
.end method

.method public onPreCall()V
    .locals 2

    .prologue
    .line 179
    .local p0, "this":Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;, "Lroboguice/util/SafeAsyncTask<TResultT;>.SafeAsyncTaskAndroidCallable;"
    :try_start_0
    iget-object v1, p0, Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;->this$0:Lroboguice/util/SafeAsyncTask;

    invoke-virtual {v1}, Lroboguice/util/SafeAsyncTask;->onPreExecute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;, "Lroboguice/util/SafeAsyncTask<TResultT;>.SafeAsyncTaskAndroidCallable;"
    .local p1, "result":Ljava/lang/Object;, "TResultT;"
    :try_start_0
    iget-object v1, p0, Lroboguice/util/SafeAsyncTask$SafeAsyncTaskAndroidCallable;->this$0:Lroboguice/util/SafeAsyncTask;

    invoke-virtual {v1, p1}, Lroboguice/util/SafeAsyncTask;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
