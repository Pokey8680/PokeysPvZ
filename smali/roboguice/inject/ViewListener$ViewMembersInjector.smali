.class public Lroboguice/inject/ViewListener$ViewMembersInjector;
.super Ljava/lang/Object;
.source "ViewListener.java"

# interfaces
.implements Lcom/google/inject/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lroboguice/inject/ViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewMembersInjector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/MembersInjector",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static viewMembersInjectors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lroboguice/inject/ViewListener$ViewMembersInjector",
            "<*>;>;>;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_FINAL"
        }
    .end annotation
.end field


# instance fields
.field protected activityProvider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected annotation:Ljava/lang/annotation/Annotation;

.field protected field:Ljava/lang/reflect/Field;

.field protected fragManager:Lcom/google/inject/Provider;

.field protected fragUtils:Lroboguice/fragment/FragmentUtil$f;

.field protected instanceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lroboguice/inject/ViewListener$ViewMembersInjector;->viewMembersInjectors:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;Lcom/google/inject/spi/TypeEncounter;Lroboguice/fragment/FragmentUtil$f;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/google/inject/spi/TypeEncounter",
            "<TT;>;",
            "Lroboguice/fragment/FragmentUtil$f",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lroboguice/inject/ViewListener$ViewMembersInjector;, "Lroboguice/inject/ViewListener$ViewMembersInjector<TT;>;"
    .local p3, "typeEncounter":Lcom/google/inject/spi/TypeEncounter;, "Lcom/google/inject/spi/TypeEncounter<TT;>;"
    .local p4, "utils":Lroboguice/fragment/FragmentUtil$f;, "Lroboguice/fragment/FragmentUtil$f<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    .line 153
    iput-object p2, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    .line 154
    const-class v0, Landroid/app/Activity;

    invoke-interface {p3, v0}, Lcom/google/inject/spi/TypeEncounter;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->activityProvider:Lcom/google/inject/Provider;

    .line 156
    if-eqz p4, :cond_0

    .line 157
    iput-object p4, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    .line 158
    invoke-interface {p4}, Lroboguice/fragment/FragmentUtil$f;->fragmentManagerType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/inject/spi/TypeEncounter;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->fragManager:Lcom/google/inject/Provider;

    .line 160
    :cond_0
    return-void
.end method

.method private extractContainerView(Ljava/lang/Object;Z)Landroid/view/View;
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "isValidFragment"    # Z

    .prologue
    .line 235
    .local p0, "this":Lroboguice/inject/ViewListener$ViewMembersInjector;, "Lroboguice/inject/ViewListener$ViewMembersInjector<TT;>;"
    if-eqz p2, :cond_0

    .line 236
    iget-object v1, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v1, p1}, Lroboguice/fragment/FragmentUtil$f;->getView(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 245
    .end local p1    # "target":Ljava/lang/Object;
    .local v0, "containerView":Landroid/view/View;
    :goto_0
    return-object v0

    .line 237
    .end local v0    # "containerView":Landroid/view/View;
    .restart local p1    # "target":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 238
    check-cast v0, Landroid/view/View;

    .restart local v0    # "containerView":Landroid/view/View;
    goto :goto_0

    .line 239
    .end local v0    # "containerView":Landroid/view/View;
    :cond_1
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 241
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .restart local v0    # "containerView":Landroid/view/View;
    goto :goto_0

    .line 243
    .end local v0    # "containerView":Landroid/view/View;
    .restart local p1    # "target":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Can\'t inject view into something that is not a Fragment, Activity or View."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static injectViews(Ljava/lang/Object;)V
    .locals 5
    .param p0, "activityOrFragment"    # Ljava/lang/Object;

    .prologue
    .line 289
    const-class v4, Lroboguice/inject/ViewListener$ViewMembersInjector;

    monitor-enter v4

    .line 291
    :try_start_0
    sget-object v3, Lroboguice/inject/ViewListener$ViewMembersInjector;->viewMembersInjectors:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 292
    .local v1, "injectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lroboguice/inject/ViewListener$ViewMembersInjector<*>;>;"
    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lroboguice/inject/ViewListener$ViewMembersInjector;

    .line 294
    .local v2, "viewMembersInjector":Lroboguice/inject/ViewListener$ViewMembersInjector;, "Lroboguice/inject/ViewListener$ViewMembersInjector<*>;"
    invoke-virtual {v2, p0}, Lroboguice/inject/ViewListener$ViewMembersInjector;->reallyInjectMembers(Ljava/lang/Object;)V

    goto :goto_0

    .line 295
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "injectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lroboguice/inject/ViewListener$ViewMembersInjector<*>;>;"
    .end local v2    # "viewMembersInjector":Lroboguice/inject/ViewListener$ViewMembersInjector;, "Lroboguice/inject/ViewListener$ViewMembersInjector<*>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "injectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lroboguice/inject/ViewListener$ViewMembersInjector<*>;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    return-void
.end method


# virtual methods
.method public injectMembers(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lroboguice/inject/ViewListener$ViewMembersInjector;, "Lroboguice/inject/ViewListener$ViewMembersInjector<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    const-class v5, Lroboguice/inject/ViewListener$ViewMembersInjector;

    monitor-enter v5

    .line 170
    :try_start_0
    iget-object v4, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->activityProvider:Lcom/google/inject/Provider;

    invoke-interface {v4}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 171
    .local v0, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v4}, Lroboguice/fragment/FragmentUtil$f;->fragmentType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 172
    .local v2, "isValidFragment":Z
    :goto_0
    if-nez v2, :cond_0

    instance-of v4, p1, Landroid/view/View;

    if-eqz v4, :cond_2

    :cond_0
    move-object v3, p1

    .line 173
    .local v3, "key":Ljava/lang/Object;
    :goto_1
    if-nez v3, :cond_3

    .line 174
    monitor-exit v5

    .line 186
    :goto_2
    return-void

    .line 171
    .end local v2    # "isValidFragment":Z
    .end local v3    # "key":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2    # "isValidFragment":Z
    :cond_2
    move-object v3, v0

    .line 172
    goto :goto_1

    .line 177
    .restart local v3    # "key":Ljava/lang/Object;
    :cond_3
    sget-object v4, Lroboguice/inject/ViewListener$ViewMembersInjector;->viewMembersInjectors:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 178
    .local v1, "injectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lroboguice/inject/ViewListener$ViewMembersInjector<*>;>;"
    if-nez v1, :cond_4

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "injectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lroboguice/inject/ViewListener$ViewMembersInjector<*>;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .restart local v1    # "injectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lroboguice/inject/ViewListener$ViewMembersInjector<*>;>;"
    sget-object v4, Lroboguice/inject/ViewListener$ViewMembersInjector;->viewMembersInjectors:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_4
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    .line 185
    monitor-exit v5

    goto :goto_2

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "injectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lroboguice/inject/ViewListener$ViewMembersInjector<*>;>;"
    .end local v2    # "isValidFragment":Z
    .end local v3    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected reallyInjectMemberFragments(Ljava/lang/Object;)V
    .locals 14
    .param p1, "activityOrFragment"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lroboguice/inject/ViewListener$ViewMembersInjector;, "Lroboguice/inject/ViewListener$ViewMembersInjector<TT;>;"
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 254
    iget-object v6, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 255
    .local v5, "instance":Ljava/lang/Object;, "TT;"
    if-nez v5, :cond_0

    .line 285
    :goto_0
    return-void

    .line 258
    :cond_0
    instance-of v6, p1, Landroid/content/Context;

    if-eqz v6, :cond_1

    instance-of v6, p1, Landroid/app/Activity;

    if-nez v6, :cond_1

    .line 259
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "Can\'t inject fragment into a non-Activity context"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 261
    :cond_1
    const/4 v2, 0x0

    .line 264
    .local v2, "fragment":Ljava/lang/Object;
    :try_start_0
    iget-object v4, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v4, Lroboguice/inject/InjectFragment;

    .line 265
    .local v4, "injectFragment":Lroboguice/inject/InjectFragment;
    invoke-interface {v4}, Lroboguice/inject/InjectFragment;->value()I

    move-result v3

    .line 267
    .local v3, "id":I
    if-ltz v3, :cond_2

    .line 268
    iget-object v6, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    iget-object v7, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->fragManager:Lcom/google/inject/Provider;

    invoke-interface {v7}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Lroboguice/fragment/FragmentUtil$f;->findFragmentById(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 272
    :goto_1
    if-nez v2, :cond_3

    iget-object v6, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {v6}, Lroboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 273
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Can\'t inject null value into %s.%s when field is not @Nullable"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    .end local v2    # "fragment":Ljava/lang/Object;
    .end local v3    # "id":I
    .end local v4    # "injectFragment":Lroboguice/inject/InjectFragment;
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 270
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .restart local v2    # "fragment":Ljava/lang/Object;
    .restart local v3    # "id":I
    .restart local v4    # "injectFragment":Lroboguice/inject/InjectFragment;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    iget-object v7, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->fragManager:Lcom/google/inject/Provider;

    invoke-interface {v7}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4}, Lroboguice/inject/InjectFragment;->tag()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lroboguice/fragment/FragmentUtil$f;->findFragmentByTag(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 275
    :cond_3
    iget-object v6, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 276
    iget-object v6, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v5, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 281
    .end local v2    # "fragment":Ljava/lang/Object;
    .end local v3    # "id":I
    .end local v4    # "injectFragment":Lroboguice/inject/InjectFragment;
    :catch_1
    move-exception v1

    .line 282
    .local v1, "f":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Can\'t assign %s value %s to %s field %s"

    const/4 v6, 0x4

    new-array v9, v6, [Ljava/lang/Object;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    :goto_2
    aput-object v6, v9, v12

    aput-object v2, v9, v11

    iget-object v6, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v9, v13

    const/4 v6, 0x3

    iget-object v10, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_4
    const-string v6, "(null)"

    goto :goto_2
.end method

.method protected reallyInjectMemberViews(Ljava/lang/Object;)V
    .locals 13
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 200
    .local p0, "this":Lroboguice/inject/ViewListener$ViewMembersInjector;, "Lroboguice/inject/ViewListener$ViewMembersInjector<TT;>;"
    iget-object v8, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->fragUtils:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v8}, Lroboguice/fragment/FragmentUtil$f;->fragmentType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v6, 0x1

    .line 201
    .local v6, "isValidFragment":Z
    :goto_0
    if-eqz v6, :cond_1

    move-object v5, p1

    .line 202
    .local v5, "instance":Ljava/lang/Object;, "TT;"
    :goto_1
    if-nez v5, :cond_2

    .line 231
    :goto_2
    return-void

    .line 200
    .end local v5    # "instance":Ljava/lang/Object;, "TT;"
    .end local v6    # "isValidFragment":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 201
    .restart local v6    # "isValidFragment":Z
    :cond_1
    iget-object v8, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 205
    .restart local v5    # "instance":Ljava/lang/Object;, "TT;"
    :cond_2
    const/4 v7, 0x0

    .line 207
    .local v7, "view":Landroid/view/View;
    iget-object v4, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    check-cast v4, Lroboguice/inject/InjectView;

    .line 208
    .local v4, "injectView":Lroboguice/inject/InjectView;
    invoke-interface {v4}, Lroboguice/inject/InjectView;->value()I

    move-result v3

    .line 210
    .local v3, "id":I
    const/4 v0, 0x0

    .line 211
    .local v0, "containerView":Landroid/view/View;
    invoke-direct {p0, p1, v6}, Lroboguice/inject/ViewListener$ViewMembersInjector;->extractContainerView(Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    .line 213
    if-ltz v3, :cond_3

    .line 214
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 219
    :goto_3
    if-nez v7, :cond_4

    iget-object v8, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {v8}, Lroboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 220
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "Can\'t inject null value into %s.%s when field is not @Nullable"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 216
    :cond_3
    invoke-interface {v4}, Lroboguice/inject/InjectView;->tag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    goto :goto_3

    .line 223
    :cond_4
    :try_start_0
    iget-object v8, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 224
    iget-object v8, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v5, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 227
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 228
    .local v2, "f":Ljava/lang/IllegalArgumentException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Can\'t assign %s value %s to %s field %s"

    const/4 v8, 0x4

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    :goto_4
    aput-object v8, v11, v12

    const/4 v8, 0x1

    aput-object v7, v11, v8

    const/4 v8, 0x2

    iget-object v12, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v11, v8

    const/4 v8, 0x3

    iget-object v12, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_5
    const-string v8, "(null)"

    goto :goto_4
.end method

.method public reallyInjectMembers(Ljava/lang/Object;)V
    .locals 1
    .param p1, "activityOrFragment"    # Ljava/lang/Object;

    .prologue
    .line 188
    .local p0, "this":Lroboguice/inject/ViewListener$ViewMembersInjector;, "Lroboguice/inject/ViewListener$ViewMembersInjector<TT;>;"
    iget-object v0, p0, Lroboguice/inject/ViewListener$ViewMembersInjector;->annotation:Ljava/lang/annotation/Annotation;

    instance-of v0, v0, Lroboguice/inject/InjectView;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0, p1}, Lroboguice/inject/ViewListener$ViewMembersInjector;->reallyInjectMemberViews(Ljava/lang/Object;)V

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Lroboguice/inject/ViewListener$ViewMembersInjector;->reallyInjectMemberFragments(Ljava/lang/Object;)V

    goto :goto_0
.end method
