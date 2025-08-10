.class Lorg/openobservatory/ooniprobe/utils/TestLists$1;
.super Ljava/lang/Object;
.source "TestLists.java"

# interfaces
.implements Lorg/openobservatory/measurement_kit/swig/OrchestrateFindLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/utils/TestLists;->updateCC_async()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$client:Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;


# direct methods
.method constructor <init>(Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$client"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/utils/TestLists$1;->val$client:Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lorg/openobservatory/measurement_kit/swig/Error;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Lorg/openobservatory/measurement_kit/swig/Error;
    .param p2, "asn"    # Ljava/lang/String;
    .param p3, "cc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "error",
            "asn",
            "cc"
        }
    .end annotation

    .line 93
    invoke-virtual {p1}, Lorg/openobservatory/measurement_kit/swig/Error;->as_bool()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/openobservatory/measurement_kit/swig/Error;->reason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    return-void

    .line 97
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/utils/TestLists$1;->val$client:Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;

    invoke-virtual {v0, p2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_probe_asn(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/utils/TestLists$1;->val$client:Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;

    invoke-virtual {v0, p3}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_probe_cc(Ljava/lang/String;)V

    .line 101
    sput-object p3, Lorg/openobservatory/ooniprobe/utils/TestLists;->probe_cc:Ljava/lang/String;

    .line 102
    sput-object p2, Lorg/openobservatory/ooniprobe/utils/TestLists;->probe_asn:Ljava/lang/String;

    .line 103
    return-void
.end method
