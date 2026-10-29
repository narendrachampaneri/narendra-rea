package com.mopub.mobileads.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes.dex */
public class XmlUtils {

    public interface NodeProcessor<T> {
        T process(Node node);
    }

    private XmlUtils() {
    }

    public static Node getFirstMatchingChildNode(Node node, String nodeName) {
        return getFirstMatchingChildNode(node, nodeName, null, null);
    }

    public static Node getFirstMatchingChildNode(Node node, String nodeName, String attributeName, List<String> attributeValues) {
        List<Node> nodes;
        if (node == null || nodeName == null || (nodes = getMatchingChildNodes(node, nodeName, attributeName, attributeValues)) == null || nodes.isEmpty()) {
            return null;
        }
        return nodes.get(0);
    }

    public static List<Node> getMatchingChildNodes(Node node, String nodeName) {
        return getMatchingChildNodes(node, nodeName, null, null);
    }

    public static List<Node> getMatchingChildNodes(Node node, String nodeName, String attributeName, List<String> attributeValues) {
        if (node == null || nodeName == null) {
            return null;
        }
        List<Node> nodes = new ArrayList<>();
        NodeList nodeList = node.getChildNodes();
        for (int i = 0; i < nodeList.getLength(); i++) {
            Node childNode = nodeList.item(i);
            if (childNode.getNodeName().equals(nodeName) && nodeMatchesAttributeFilter(childNode, attributeName, attributeValues)) {
                nodes.add(childNode);
            }
        }
        return nodes;
    }

    public static boolean nodeMatchesAttributeFilter(Node node, String attributeName, List<String> attributeValues) {
        Node attrNode;
        if (attributeName == null || attributeValues == null) {
            return true;
        }
        NamedNodeMap attrMap = node.getAttributes();
        return (attrMap == null || (attrNode = attrMap.getNamedItem(attributeName)) == null || !attributeValues.contains(attrNode.getNodeValue())) ? false : true;
    }

    public static String getNodeValue(Node node) {
        if (node == null || node.getFirstChild() == null || node.getFirstChild().getNodeValue() == null) {
            return null;
        }
        return node.getFirstChild().getNodeValue().trim();
    }

    public static Integer getAttributeValueAsInt(Node node, String attributeName) {
        if (node == null || attributeName == null) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(getAttributeValue(node, attributeName)));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    public static String getAttributeValue(Node node, String attributeName) {
        if (node == null || attributeName == null) {
            return null;
        }
        NamedNodeMap attrMap = node.getAttributes();
        Node attrNode = attrMap.getNamedItem(attributeName);
        if (attrNode != null) {
            return attrNode.getNodeValue();
        }
        return null;
    }

    public static <T> List<T> getListFromDocument(Document vastDoc, String elementName, String attributeName, String attributeValue, NodeProcessor<T> nodeProcessor) {
        NodeList nodes;
        T processed;
        ArrayList<T> results = new ArrayList<>();
        if (vastDoc != null && (nodes = vastDoc.getElementsByTagName(elementName)) != null) {
            List<String> attributeValues = attributeValue == null ? null : Arrays.asList(attributeValue);
            for (int i = 0; i < nodes.getLength(); i++) {
                Node node = nodes.item(i);
                if (node != null && nodeMatchesAttributeFilter(node, attributeName, attributeValues) && (processed = nodeProcessor.process(node)) != null) {
                    results.add(processed);
                }
            }
        }
        return results;
    }

    public static <T> T getFirstMatchFromDocument(Document vastDoc, String elementName, String attributeName, String attributeValue, NodeProcessor<T> nodeProcessor) {
        NodeList nodes;
        T processed;
        if (vastDoc == null || (nodes = vastDoc.getElementsByTagName(elementName)) == null) {
            return null;
        }
        List<String> attributeValues = attributeValue == null ? null : Arrays.asList(attributeValue);
        for (int i = 0; i < nodes.getLength(); i++) {
            Node node = nodes.item(i);
            if (node != null && nodeMatchesAttributeFilter(node, attributeName, attributeValues) && (processed = nodeProcessor.process(node)) != null) {
                return processed;
            }
        }
        return null;
    }

    public static String getFirstMatchingStringData(Document vastDoc, String elementName) {
        return getFirstMatchingStringData(vastDoc, elementName, null, null);
    }

    public static String getFirstMatchingStringData(Document vastDoc, String elementName, String attributeName, String attributeValue) {
        return (String) getFirstMatchFromDocument(vastDoc, elementName, attributeName, attributeValue, new NodeProcessor<String>() { // from class: com.mopub.mobileads.util.XmlUtils.1
            @Override // com.mopub.mobileads.util.XmlUtils.NodeProcessor
            public String process(Node node) {
                return XmlUtils.getNodeValue(node);
            }
        });
    }

    public static List<String> getStringDataAsList(Document vastDoc, String elementName) {
        return getStringDataAsList(vastDoc, elementName, null, null);
    }

    public static List<String> getStringDataAsList(Document vastDoc, String elementName, String attributeName, String attributeValue) {
        return getListFromDocument(vastDoc, elementName, attributeName, attributeValue, new NodeProcessor<String>() { // from class: com.mopub.mobileads.util.XmlUtils.2
            @Override // com.mopub.mobileads.util.XmlUtils.NodeProcessor
            public String process(Node node) {
                return XmlUtils.getNodeValue(node);
            }
        });
    }

    public static List<Node> getNodesWithElementAndAttribute(Document vastDoc, String elementName, String attributeName, String attributeValue) {
        return getListFromDocument(vastDoc, elementName, attributeName, attributeValue, new NodeProcessor<Node>() { // from class: com.mopub.mobileads.util.XmlUtils.3
            @Override // com.mopub.mobileads.util.XmlUtils.NodeProcessor
            public Node process(Node node) {
                return node;
            }
        });
    }
}
