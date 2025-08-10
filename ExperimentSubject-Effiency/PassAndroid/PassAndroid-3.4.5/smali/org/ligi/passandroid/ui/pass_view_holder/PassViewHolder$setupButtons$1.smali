.class final Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$1;
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
.field final synthetic $pass:Lorg/ligi/passandroid/model/pass/Pass;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;Lorg/ligi/passandroid/model/pass/Pass;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$1;->this$0:Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$1;->this$0:Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    # invokes: Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->getDateOrExtraText(Lorg/ligi/passandroid/model/pass/Pass;)Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;
    invoke-static {v0, v1}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->access$getDateOrExtraText(Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;Lorg/ligi/passandroid/model/pass/Pass;)Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object p1

    .end local p1    # "it":Landroid/view/View;
    if-eqz p1, :cond_0

    .local p1, "it":Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;
    iget-object v1, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder$setupButtons$1;->this$0:Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->getView()Landroid/support/v7/widget/CardView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v1, v0, p1}, Lorg/ligi/passandroid/functions/AddToCalendarKt;->tryAddDateToCalendar(Lorg/ligi/passandroid/model/pass/Pass;Landroid/view/View;Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V

    .line 34
    .end local p1    # "it":Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;
    :cond_0
    return-void
.end method
