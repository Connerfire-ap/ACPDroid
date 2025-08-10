.class public Lorg/ligi/snackengage/conditions/logic/Not;
.super Ljava/lang/Object;
.source "Not.java"

# interfaces
.implements Lorg/ligi/snackengage/conditions/SnackCondition;


# instance fields
.field private final condition:Lorg/ligi/snackengage/conditions/SnackCondition;


# direct methods
.method public constructor <init>(Lorg/ligi/snackengage/conditions/SnackCondition;)V
    .locals 0
    .param p1, "condition"    # Lorg/ligi/snackengage/conditions/SnackCondition;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/ligi/snackengage/conditions/logic/Not;->condition:Lorg/ligi/snackengage/conditions/SnackCondition;

    .line 13
    return-void
.end method


# virtual methods
.method public isAppropriate(Lorg/ligi/snackengage/SnackContext;Lorg/ligi/snackengage/snacks/Snack;)Z
    .locals 1
    .param p1, "context"    # Lorg/ligi/snackengage/SnackContext;
    .param p2, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    .line 17
    iget-object v0, p0, Lorg/ligi/snackengage/conditions/logic/Not;->condition:Lorg/ligi/snackengage/conditions/SnackCondition;

    invoke-interface {v0, p1, p2}, Lorg/ligi/snackengage/conditions/SnackCondition;->isAppropriate(Lorg/ligi/snackengage/SnackContext;Lorg/ligi/snackengage/snacks/Snack;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
