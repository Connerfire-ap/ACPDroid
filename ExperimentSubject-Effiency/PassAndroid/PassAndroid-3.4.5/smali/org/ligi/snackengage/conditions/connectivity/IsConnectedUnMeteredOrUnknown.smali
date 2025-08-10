.class public Lorg/ligi/snackengage/conditions/connectivity/IsConnectedUnMeteredOrUnknown;
.super Lorg/ligi/snackengage/conditions/connectivity/ConnectivityAwareCondition;
.source "IsConnectedUnMeteredOrUnknown.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/ligi/snackengage/conditions/connectivity/ConnectivityAwareCondition;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkConnection(Landroid/net/ConnectivityManager;Landroid/net/NetworkInfo;)Z
    .locals 4
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "activeNetwork"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 24
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 25
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v2

    if-nez v2, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 25
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isAppropriate(Lorg/ligi/snackengage/SnackContext;Lorg/ligi/snackengage/snacks/Snack;)Z
    .locals 2
    .param p1, "context"    # Lorg/ligi/snackengage/SnackContext;
    .param p2, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    .line 16
    invoke-virtual {p1}, Lorg/ligi/snackengage/SnackContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ligi/snackengage/conditions/connectivity/IsConnectedUnMeteredOrUnknown;->init(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Lorg/ligi/snackengage/conditions/connectivity/IsConnectedUnMeteredOrUnknown;->isConnectivityAware()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ligi/snackengage/conditions/connectivity/IsConnectedUnMeteredOrUnknown;->activeNetwork:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ligi/snackengage/conditions/connectivity/IsConnectedUnMeteredOrUnknown;->activeNetwork:Landroid/net/NetworkInfo;

    .line 19
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ligi/snackengage/conditions/connectivity/IsConnectedUnMeteredOrUnknown;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lorg/ligi/snackengage/conditions/connectivity/IsConnectedUnMeteredOrUnknown;->activeNetwork:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v0, v1}, Lorg/ligi/snackengage/conditions/connectivity/IsConnectedUnMeteredOrUnknown;->checkConnection(Landroid/net/ConnectivityManager;Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 18
    :goto_0
    return v0

    .line 19
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isConnectivityAware()Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lorg/ligi/snackengage/conditions/connectivity/ConnectivityAwareCondition;->isConnectivityAware()Z

    move-result v0

    return v0
.end method
