.class public Lio/fabric/sdk/android/ActivityLifecycleManager;
.super Ljava/lang/Object;
.source "ActivityLifecycleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;,
        Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;
    }
.end annotation


# instance fields
.field private final application:Landroid/app/Application;

.field private callbacksWrapper:Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager;->application:Landroid/app/Application;

    .line 57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 58
    new-instance v1, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;-><init>(Landroid/app/Application;)V

    iput-object v1, p0, Lio/fabric/sdk/android/ActivityLifecycleManager;->callbacksWrapper:Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public registerCallbacks(Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;)Z
    .locals 1
    .param p1, "callbacks"    # Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;

    .line 68
    iget-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager;->callbacksWrapper:Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

    if-eqz v0, :cond_0

    # invokes: Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->registerLifecycleCallbacks(Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;)Z
    invoke-static {v0, p1}, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->access$000(Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;Lio/fabric/sdk/android/ActivityLifecycleManager$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetCallbacks()V
    .locals 1

    .line 76
    iget-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager;->callbacksWrapper:Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;

    if-eqz v0, :cond_0

    .line 77
    # invokes: Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->clearCallbacks()V
    invoke-static {v0}, Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;->access$100(Lio/fabric/sdk/android/ActivityLifecycleManager$ActivityLifecycleCallbacksWrapper;)V

    .line 79
    :cond_0
    return-void
.end method
