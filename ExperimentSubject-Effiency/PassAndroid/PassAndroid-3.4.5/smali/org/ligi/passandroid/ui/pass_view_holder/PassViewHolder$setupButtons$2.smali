.class final Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$2;
.super Ljava/lang/Object;
.source "PassViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->setupButtons(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/Pass;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $pass:Lorg/ligi/passandroid/model/pass/Pass;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/Pass;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$2;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$2;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$2;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$2;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt;->showNavigateToLocationsDialog(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/Pass;Z)V

    .line 38
    return-void
.end method
