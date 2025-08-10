.class public Lorg/ligi/snackengage/conditions/connectivity/IsConnectedViaWiFiOrUnknown;
.super Lorg/ligi/snackengage/conditions/connectivity/IsConnectedUnMeteredOrUnknown;
.source "IsConnectedViaWiFiOrUnknown.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/ligi/snackengage/conditions/connectivity/IsConnectedUnMeteredOrUnknown;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkConnection(Landroid/net/ConnectivityManager;Landroid/net/NetworkInfo;)Z
    .locals 2
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "activeNetwork"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
