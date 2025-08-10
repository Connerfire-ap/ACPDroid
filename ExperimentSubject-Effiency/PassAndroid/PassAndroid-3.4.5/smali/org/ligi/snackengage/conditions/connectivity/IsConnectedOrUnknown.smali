.class public Lorg/ligi/snackengage/conditions/connectivity/IsConnectedOrUnknown;
.super Lorg/ligi/snackengage/conditions/connectivity/ConnectivityAwareCondition;
.source "IsConnectedOrUnknown.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/ligi/snackengage/conditions/connectivity/ConnectivityAwareCondition;-><init>()V

    return-void
.end method


# virtual methods
.method public isAppropriate(Lorg/ligi/snackengage/SnackContext;Lorg/ligi/snackengage/snacks/Snack;)Z
    .locals 1
    .param p1, "context"    # Lorg/ligi/snackengage/SnackContext;
    .param p2, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    .line 10
    invoke-virtual {p1}, Lorg/ligi/snackengage/SnackContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ligi/snackengage/conditions/connectivity/IsConnectedOrUnknown;->init(Landroid/content/Context;)V

    .line 12
    invoke-virtual {p0}, Lorg/ligi/snackengage/conditions/connectivity/IsConnectedOrUnknown;->isConnectivityAware()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ligi/snackengage/conditions/connectivity/IsConnectedOrUnknown;->activeNetwork:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ligi/snackengage/conditions/connectivity/IsConnectedOrUnknown;->activeNetwork:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isConnectivityAware()Z
    .locals 1

    .prologue
    .line 6
    invoke-super {p0}, Lorg/ligi/snackengage/conditions/connectivity/ConnectivityAwareCondition;->isConnectivityAware()Z

    move-result v0

    return v0
.end method
