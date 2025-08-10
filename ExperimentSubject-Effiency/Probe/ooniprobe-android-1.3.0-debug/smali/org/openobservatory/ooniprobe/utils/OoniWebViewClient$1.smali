.class Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient$1;
.super Ljava/lang/Object;
.source "OoniWebViewClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient$1;->this$0:Lorg/openobservatory/ooniprobe/utils/OoniWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "id"
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 52
    return-void
.end method
