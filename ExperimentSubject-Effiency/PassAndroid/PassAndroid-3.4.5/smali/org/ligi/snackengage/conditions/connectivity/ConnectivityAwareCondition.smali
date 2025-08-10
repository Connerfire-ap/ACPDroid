.class abstract Lorg/ligi/snackengage/conditions/connectivity/ConnectivityAwareCondition;
.super Ljava/lang/Object;
.source "ConnectivityAwareCondition.java"

# interfaces
.implements Lorg/ligi/snackengage/conditions/SnackCondition;


# instance fields
.field protected activeNetwork:Landroid/net/NetworkInfo;

.field protected connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/ligi/snackengage/conditions/connectivity/ConnectivityAwareCondition;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 20
    iget-object v0, p0, Lorg/ligi/snackengage/conditions/connectivity/ConnectivityAwareCondition;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/snackengage/conditions/connectivity/ConnectivityAwareCondition;->activeNetwork:Landroid/net/NetworkInfo;

    .line 22
    :cond_0
    return-void
.end method

.method public isConnectivityAware()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/ligi/snackengage/conditions/connectivity/ConnectivityAwareCondition;->connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
