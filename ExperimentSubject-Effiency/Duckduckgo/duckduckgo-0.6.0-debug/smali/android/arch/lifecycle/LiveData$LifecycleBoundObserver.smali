.class Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
.super Ljava/lang/Object;
.source "LiveData.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleBoundObserver"
.end annotation


# instance fields
.field public active:Z

.field public lastVersion:I

.field public final observer:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final owner:Landroid/arch/lifecycle/LifecycleOwner;

.field final synthetic this$0:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V
    .locals 1
    .param p1, "this$0"    # Landroid/arch/lifecycle/LiveData;
    .param p2, "owner"    # Landroid/arch/lifecycle/LifecycleOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/arch/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    .line 365
    .local p0, "this":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    .local p3, "observer":Landroid/arch/lifecycle/Observer;, "Landroid/arch/lifecycle/Observer<TT;>;"
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const/4 v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->lastVersion:I

    .line 366
    iput-object p2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    .line 367
    iput-object p3, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->observer:Landroid/arch/lifecycle/Observer;

    .line 368
    return-void
.end method


# virtual methods
.method activeStateChanged(Z)V
    .locals 5
    .param p1, "newActive"    # Z

    .line 382
    .local p0, "this":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-ne p1, v0, :cond_0

    .line 383
    return-void

    .line 385
    :cond_0
    iput-boolean p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    .line 386
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    # getter for: Landroid/arch/lifecycle/LiveData;->mActiveCount:I
    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 387
    .local v0, "wasInactive":Z
    :goto_0
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    # getter for: Landroid/arch/lifecycle/LiveData;->mActiveCount:I
    invoke-static {v2}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v3

    iget-boolean v4, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    add-int/2addr v3, v1

    # setter for: Landroid/arch/lifecycle/LiveData;->mActiveCount:I
    invoke-static {v2, v3}, Landroid/arch/lifecycle/LiveData;->access$302(Landroid/arch/lifecycle/LiveData;I)I

    .line 388
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-eqz v1, :cond_3

    .line 389
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->onActive()V

    .line 391
    :cond_3
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    # getter for: Landroid/arch/lifecycle/LiveData;->mActiveCount:I
    invoke-static {v1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-nez v1, :cond_4

    .line 392
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->onInactive()V

    .line 394
    :cond_4
    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->active:Z

    if-eqz v1, :cond_5

    .line 395
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    # invokes: Landroid/arch/lifecycle/LiveData;->dispatchingValue(Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V
    invoke-static {v1, p0}, Landroid/arch/lifecycle/LiveData;->access$400(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;)V

    .line 397
    :cond_5
    return-void
.end method

.method public onStateChanged(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "source"    # Landroid/arch/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .line 372
    .local p0, "this":Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;, "Landroid/arch/lifecycle/LiveData<TT;>.LifecycleBoundObserver;"
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->observer:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    .line 374
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->owner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    invoke-static {v0}, Landroid/arch/lifecycle/LiveData;->isActiveState(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->activeStateChanged(Z)V

    .line 379
    return-void
.end method
