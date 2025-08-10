.class final Lorg/ligi/passandroid/ui/PassAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "PassAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassAdapter;->onBindViewHolder(Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;I)V
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

.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassAdapter;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassAdapter;Lorg/ligi/passandroid/model/pass/Pass;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassAdapter$onBindViewHolder$1;->this$0:Lorg/ligi/passandroid/ui/PassAdapter;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/PassAdapter$onBindViewHolder$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAdapter$onBindViewHolder$1;->this$0:Lorg/ligi/passandroid/ui/PassAdapter;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/PassAdapter;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassAdapter$onBindViewHolder$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    invoke-interface {v0, v1}, Lorg/ligi/passandroid/model/PassStore;->setCurrentPass(Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 46
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAdapter$onBindViewHolder$1;->this$0:Lorg/ligi/passandroid/ui/PassAdapter;

    # getter for: Lorg/ligi/passandroid/ui/PassAdapter;->passListActivity:Landroid/support/v7/app/AppCompatActivity;
    invoke-static {v0}, Lorg/ligi/passandroid/ui/PassAdapter;->access$getPassListActivity$p(Lorg/ligi/passandroid/ui/PassAdapter;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lorg/ligi/passandroid/ui/PassViewActivity;

    invoke-static {v0, v1}, Lorg/ligi/kaxt/ContextExtensionsKt;->startActivityFromClass(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    return-void
.end method
