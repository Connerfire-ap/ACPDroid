.class public Lorg/ligi/snackengage/SnackEngageBuilder;
.super Ljava/lang/Object;
.source "SnackEngageBuilder.java"


# instance fields
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

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/ligi/snackengage/SnackEngageBuilder;->view:Landroid/view/View;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ligi/snackengage/SnackEngageBuilder;->snacks:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public build()Lorg/ligi/snackengage/SnackEngage;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lorg/ligi/snackengage/SnackEngage;

    iget-object v1, p0, Lorg/ligi/snackengage/SnackEngageBuilder;->snacks:Ljava/util/List;

    iget-object v2, p0, Lorg/ligi/snackengage/SnackEngageBuilder;->view:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lorg/ligi/snackengage/SnackEngage;-><init>(Ljava/util/List;Landroid/view/View;)V

    return-object v0
.end method

.method public withSnack(Lorg/ligi/snackengage/snacks/Snack;)Lorg/ligi/snackengage/SnackEngageBuilder;
    .locals 1
    .param p1, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    .line 20
    iget-object v0, p0, Lorg/ligi/snackengage/SnackEngageBuilder;->snacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-object p0
.end method
