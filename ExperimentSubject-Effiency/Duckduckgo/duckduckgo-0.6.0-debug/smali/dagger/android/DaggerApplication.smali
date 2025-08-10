.class public abstract Ldagger/android/DaggerApplication;
.super Landroid/app/Application;
.source "DaggerApplication.java"

# interfaces
.implements Ldagger/android/HasActivityInjector;
.implements Ldagger/android/HasFragmentInjector;
.implements Ldagger/android/HasServiceInjector;
.implements Ldagger/android/HasBroadcastReceiverInjector;
.implements Ldagger/android/HasContentProviderInjector;


# instance fields
.field activityInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field broadcastReceiverInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field contentProviderInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/ContentProvider;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field fragmentInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private volatile needToInject:Z

.field serviceInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldagger/android/DaggerApplication;->needToInject:Z

    return-void
.end method

.method private injectIfNecessary()V
    .locals 3

    .line 72
    iget-boolean v0, p0, Ldagger/android/DaggerApplication;->needToInject:Z

    if-eqz v0, :cond_2

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Ldagger/android/DaggerApplication;->needToInject:Z

    if-eqz v0, :cond_1

    .line 76
    nop

    .line 77
    invoke-virtual {p0}, Ldagger/android/DaggerApplication;->applicationInjector()Ldagger/android/AndroidInjector;

    move-result-object v0

    .line 78
    .local v0, "applicationInjector":Ldagger/android/AndroidInjector;, "Ldagger/android/AndroidInjector<Ldagger/android/DaggerApplication;>;"
    invoke-interface {v0, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    .line 79
    iget-boolean v1, p0, Ldagger/android/DaggerApplication;->needToInject:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The AndroidInjector returned from applicationInjector() did not inject the DaggerApplication"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    .end local v0    # "applicationInjector":Ldagger/android/AndroidInjector;, "Ldagger/android/AndroidInjector<Ldagger/android/DaggerApplication;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 87
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic activityInjector()Ldagger/android/AndroidInjector;
    .locals 1

    .line 35
    invoke-virtual {p0}, Ldagger/android/DaggerApplication;->activityInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method

.method public activityInjector()Ldagger/android/DispatchingAndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Ldagger/android/DaggerApplication;->activityInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method

.method protected abstract applicationInjector()Ldagger/android/AndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "+",
            "Ldagger/android/DaggerApplication;",
            ">;"
        }
    .end annotation
.end method

.method public bridge synthetic broadcastReceiverInjector()Ldagger/android/AndroidInjector;
    .locals 1

    .line 35
    invoke-virtual {p0}, Ldagger/android/DaggerApplication;->broadcastReceiverInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method

.method public broadcastReceiverInjector()Ldagger/android/DispatchingAndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Ldagger/android/DaggerApplication;->broadcastReceiverInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method

.method public contentProviderInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroid/content/ContentProvider;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ldagger/android/DaggerApplication;->injectIfNecessary()V

    .line 120
    iget-object v0, p0, Ldagger/android/DaggerApplication;->contentProviderInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method

.method public bridge synthetic fragmentInjector()Ldagger/android/AndroidInjector;
    .locals 1

    .line 35
    invoke-virtual {p0}, Ldagger/android/DaggerApplication;->fragmentInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method

.method public fragmentInjector()Ldagger/android/DispatchingAndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Ldagger/android/DaggerApplication;->fragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 52
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 53
    invoke-direct {p0}, Ldagger/android/DaggerApplication;->injectIfNecessary()V

    .line 54
    return-void
.end method

.method public bridge synthetic serviceInjector()Ldagger/android/AndroidInjector;
    .locals 1

    .line 35
    invoke-virtual {p0}, Ldagger/android/DaggerApplication;->serviceInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method

.method public serviceInjector()Ldagger/android/DispatchingAndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Ldagger/android/DaggerApplication;->serviceInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method

.method setInjected()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldagger/android/DaggerApplication;->needToInject:Z

    .line 92
    return-void
.end method
