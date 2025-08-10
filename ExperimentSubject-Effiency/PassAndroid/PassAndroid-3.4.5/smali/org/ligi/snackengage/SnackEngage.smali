.class public Lorg/ligi/snackengage/SnackEngage;
.super Ljava/lang/Object;
.source "SnackEngage.java"


# instance fields
.field private final snackContext:Lorg/ligi/snackengage/SnackContext;

.field private final snacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/ligi/snackengage/snacks/Snack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/ligi/snackengage/snacks/Snack;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "snacks":Ljava/util/List;, "Ljava/util/List<Lorg/ligi/snackengage/snacks/Snack;>;"
    new-instance v0, Lorg/ligi/snackengage/SnackContext;

    invoke-direct {v0, p2}, Lorg/ligi/snackengage/SnackContext;-><init>(Landroid/view/View;)V

    invoke-direct {p0, p1, v0}, Lorg/ligi/snackengage/SnackEngage;-><init>(Ljava/util/List;Lorg/ligi/snackengage/SnackContext;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/ligi/snackengage/SnackContext;)V
    .locals 0
    .param p2, "snackContext"    # Lorg/ligi/snackengage/SnackContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/ligi/snackengage/snacks/Snack;",
            ">;",
            "Lorg/ligi/snackengage/SnackContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "snacks":Ljava/util/List;, "Ljava/util/List<Lorg/ligi/snackengage/snacks/Snack;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/ligi/snackengage/SnackEngage;->snacks:Ljava/util/List;

    .line 21
    iput-object p2, p0, Lorg/ligi/snackengage/SnackEngage;->snackContext:Lorg/ligi/snackengage/SnackContext;

    .line 22
    return-void
.end method

.method public static from(Landroid/support/v7/app/AppCompatActivity;)Lorg/ligi/snackengage/SnackEngageBuilder;
    .locals 1
    .param p0, "activity"    # Landroid/support/v7/app/AppCompatActivity;

    .prologue
    .line 29
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/ligi/snackengage/SnackEngage;->from(Landroid/view/View;)Lorg/ligi/snackengage/SnackEngageBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static from(Landroid/view/View;)Lorg/ligi/snackengage/SnackEngageBuilder;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 25
    new-instance v0, Lorg/ligi/snackengage/SnackEngageBuilder;

    invoke-direct {v0, p0}, Lorg/ligi/snackengage/SnackEngageBuilder;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public engageWhenAppropriate()Z
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lorg/ligi/snackengage/SnackEngage;->snacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/snackengage/snacks/Snack;

    .line 34
    .local v0, "snack":Lorg/ligi/snackengage/snacks/Snack;
    iget-object v2, p0, Lorg/ligi/snackengage/SnackEngage;->snackContext:Lorg/ligi/snackengage/SnackContext;

    invoke-virtual {v2}, Lorg/ligi/snackengage/SnackContext;->getStats()Lorg/ligi/snackengage/stats/SnackStats;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/ligi/snackengage/stats/SnackStats;->registerOpportunity(Lorg/ligi/snackengage/snacks/Snack;)V

    .line 35
    iget-object v2, p0, Lorg/ligi/snackengage/SnackEngage;->snackContext:Lorg/ligi/snackengage/SnackContext;

    invoke-interface {v0, v2}, Lorg/ligi/snackengage/snacks/Snack;->opportunity(Lorg/ligi/snackengage/SnackContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const/4 v1, 0x1

    .line 40
    .end local v0    # "snack":Lorg/ligi/snackengage/snacks/Snack;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
