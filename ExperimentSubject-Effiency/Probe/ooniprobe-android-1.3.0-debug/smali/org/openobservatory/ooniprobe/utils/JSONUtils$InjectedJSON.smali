.class public Lorg/openobservatory/ooniprobe/utils/JSONUtils$InjectedJSON;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openobservatory/ooniprobe/utils/JSONUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InjectedJSON"
.end annotation


# instance fields
.field private jsonData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$InjectedJSON;->jsonData:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/utils/JSONUtils$InjectedJSON;->jsonData:Ljava/lang/String;

    return-object v0
.end method
