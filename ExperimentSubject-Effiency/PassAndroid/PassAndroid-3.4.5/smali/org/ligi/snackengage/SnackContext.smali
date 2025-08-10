.class public Lorg/ligi/snackengage/SnackContext;
.super Ljava/lang/Object;
.source "SnackContext.java"


# instance fields
.field private final stats:Lorg/ligi/snackengage/stats/SnackStats;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 14
    new-instance v0, Lorg/ligi/snackengage/stats/SnackStats;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ligi/snackengage/stats/SnackStats;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lorg/ligi/snackengage/SnackContext;-><init>(Landroid/view/View;Lorg/ligi/snackengage/stats/SnackStats;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lorg/ligi/snackengage/stats/SnackStats;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "stats"    # Lorg/ligi/snackengage/stats/SnackStats;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/ligi/snackengage/SnackContext;->view:Landroid/view/View;

    .line 19
    iput-object p2, p0, Lorg/ligi/snackengage/SnackContext;->stats:Lorg/ligi/snackengage/stats/SnackStats;

    .line 20
    return-void
.end method


# virtual methods
.method public getAndroidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/ligi/snackengage/SnackContext;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/ligi/snackengage/SnackContext;->view:Landroid/view/View;

    return-object v0
.end method

.method public getStats()Lorg/ligi/snackengage/stats/SnackStats;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/ligi/snackengage/SnackContext;->stats:Lorg/ligi/snackengage/stats/SnackStats;

    return-object v0
.end method
